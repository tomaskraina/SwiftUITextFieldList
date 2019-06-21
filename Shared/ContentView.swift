//
//  ContentView.swift
//  SwiftUITextFieldList
//
//  Created by Tom Kraina on 21/06/2019.
//  Copyright © 2019 Tom Kraina. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    @State private var text: String = ""

    var body: some View {
        VStack {
            List {
                // TextField is not editable when this code is ran on macOS
                TextField($text, placeholder: Text("Entry text"))
                Text("Entered text: \(text)")
            }
            // TextField is editable on both macOS as well as iOS
            TextField($text, placeholder: Text("Entry text"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
