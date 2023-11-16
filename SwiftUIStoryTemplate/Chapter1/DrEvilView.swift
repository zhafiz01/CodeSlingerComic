//
//  DrEvilSwiftUIView.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/14/23.
//

import SwiftUI

struct DrEvilSwiftUIView: View {
    @State private var displayedText: String = ""

    func printSlow(phrase: String, speed: TimeInterval = 0.03) {
        for (index, character) in phrase.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
                displayedText.append(character)
            }
        }
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
//                    Text("Chapter 1: The Quiet Coder")
//                        .foregroundColor(.cyan)

                    Image("DrEvil")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .padding()
                        .aspectRatio(contentMode: .fit)

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .padding()
                    }

                    Button("Begin Dr Evil's Evil Plan") {
                        displayedText = ""
                        printSlow(phrase: "Our story then cuts to Dr. Evil, a man who is 50 that is both imposing and cunning.  Dr. Evil is the CEO of Innovatech Corporation which develops AI tech.  As Dr. Evil has his eyes fixed on Byteville he smirks and aggresively states, “The world will soon bow down before my creation!  Aetheris will revolutionize everything and help me begin my plan for world domination!”  His voice was laced with evil intentions as it resonated throughout the room. ")
                    }
                    .foregroundColor(.cyan)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                    .padding()

                    NavigationLink(destination: DrEvilMrSmith()) {
                        Text("Go to Next Page")
                    }
                    .foregroundColor(.cyan)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                }
            }
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

struct DrEvilSwift: View {
    var body: some View {
        Text("This is the next view")
            .foregroundColor(.white)
    }
}
#Preview {
    DrEvilSwiftUIView()
}
