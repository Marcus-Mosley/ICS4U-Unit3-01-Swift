//
// ContentView.swift
// ICS4U-Unit3-01-Swift
//
// Created by Marcus A. Mosley on 2021-05-20
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var str: String = ""
    @State private var revstr: String = ""

    var body: some View {
        VStack {
            TextField("Enter a string:", text: $str)
                .padding()
            Button("Enter", action: {
                revstr = reverse(str)
            }).padding()
            Text("\(String(revstr)) is the reversed string.")
        }
    }

    // Uses recursion to output the reversed string
    func reverse(_ str: String) -> String {

        if str.isEmpty {
            return str
        } else {
            let range = str.index(after: str.startIndex)..<str.endIndex
            return reverse(String(str[range])) + "\(str[str.startIndex])"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
