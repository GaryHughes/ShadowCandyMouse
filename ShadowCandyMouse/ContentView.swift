//
//  ContentView.swift
//  ShadowCandyMouse
//
//  Created by Gary Hughes on 25/7/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//
import SwiftUI
import Combine
import NotificationCenter

struct TextView: UIViewRepresentable {

    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()

        textView.font = UIFont.preferredFont(forTextStyle: textStyle)
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.delegate = context.coordinator
        
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = UIFont.preferredFont(forTextStyle: textStyle)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }
     
    class Coordinator: NSObject, UITextViewDelegate {
        var text: Binding<String>
     
        init(_ text: Binding<String>) {
            self.text = text
        }
     
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let callback: Callback? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}

extension Publishers {
   
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
     
        let willShow = NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification)
            .map { $0.keyboardHeight }
        
        let willHide = NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification)
            .map { _ in CGFloat(0) }
        
        return MergeMany(willShow, willHide)
            .eraseToAnyPublisher()
    }
}

struct KeyboardAdaptive: ViewModifier {
    @State private var keyboardHeight: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardHeight)
            .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}

extension View {
    func keyboardAdaptive() -> some View {
        ModifiedContent(content: self, modifier: KeyboardAdaptive())
    }
}

struct ContentView: View {
        
    @State private var isEnglish = true
    @State private var text: String = ""
    @State private var showShareSheet = false
    private let translator = ShadowTranslator()
    
    var body: some View {
        VStack {
            TextView(text: $text, textStyle: .constant(.largeTitle))
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    self.text = self.translator.englishToShadow(self.text)
                    self.isEnglish.toggle()
                }) {
                    Text("🐱").font(.system(size: 60))
                }.disabled(!isEnglish).opacity(isEnglish ? 1.0 : 0.5)
                Spacer()
                Button(action: {
                    self.text = self.translator.shadowToEnglish(self.text)
                    self.isEnglish.toggle()
                }) {
                    Text("😀").font(.system(size: 60))
                }
                .disabled(isEnglish).opacity(isEnglish ? 0.5 : 1.0)
                Spacer()
                Button(action: {
                    self.showShareSheet = true
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
                Spacer()
            }
        }
        .padding()
        .keyboardAdaptive()
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(activityItems: [self.text])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
