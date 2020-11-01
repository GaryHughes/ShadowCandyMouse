//
//  ContentView.swift
//  ShadowCandyMouse
//
//  Created by Gary Hughes on 25/7/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    @State private var shadow: String = "Shadow Candy Mouse"
    @State private var english: String = "English"
    
    var body: some View {
        VStack {
            TextField("Shadow", text: $shadow)
            TextField("English", text: $english)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
