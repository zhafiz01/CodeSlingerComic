//
//  CmonLily.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct CmonLily: View {
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
                    Image("CmonLily")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                        .padding()

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding()
                    }

                    Button("Enter The Confines of Lily's Work Station") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "In the dimly lit confines of her workstation, Lily, a woman in her early 20s with glasses and an introverted demeanor, was engrossed in a world of digital complexity. The room resonated with the gentle hum of computers, their screens casting a soft glow on her determined face. Amidst a chaotic tangle of wires and computer components, she meticulously maneuvered her fingers across the keyboard, lines of code scrolling rapidly before her eyes. Muttering to herself as she was rushing to finish a last-minute project for work, Lily whispered, “Come on, Lily, you can do this...' Her voice was barely audible in the sea of electronic sounds around her.")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: DrEvilSwiftUIView()) {
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



#Preview {
    CmonLily()
}
