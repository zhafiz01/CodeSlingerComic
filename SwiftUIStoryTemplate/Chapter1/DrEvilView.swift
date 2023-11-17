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
                    Image("DrEvil")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .scaledToFit()
                        .padding()
                        .padding()

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding()
                    }

                    Button("Begin Dr Evil's Evil Plan") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "Our story then cuts to Dr. Evil, a man who is both imposing and cunning.  Dr. Evil is the CEO of Innovatech Corporation which develops AI technology.  As Dr. Evil has his eyes fixed on Byteville he smirks and aggresively states, “The world will soon bow down before my creation!  Aetheris will revolutionize everything and help me begin my plan for world domination!”  His voice was laced with evil intentions as it resonated throughout the room.")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: DrEvilMrSmith()) {
                        Text("Next Page -->")
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                            .padding()
                    }
                }
            }
            .navigationBarHidden(true)
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
