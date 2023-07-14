//
//  ContentView.swift
//  About Me Independent Project
//
//  Created by Kayla Ann Newton on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var fact = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack {
                Text("Hey, my name is Kayla")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.017, green: 0.47, blue: 0.685))
                Image("me")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding()
                Button("reveal fact") {
                    // action for button *below*
                    fact = "I attend a career based magnet high school with a focus on theatre, and am working to become a film actress in the future."
                }
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.017, green: 0.47, blue: 0.685))
                Text(fact)
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
