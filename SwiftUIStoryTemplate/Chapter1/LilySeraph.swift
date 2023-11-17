//
//  LilySeraph.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct LilySeraph: View {
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
                    Image("LilySeraph")
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

                    Button("BEGIN LILY'S PERILOUS JOURNEY") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "The voice, unmistakably Seraph's, sent shivers down her spine. Lily stared at the screen as the code morphed into a warning message from the old AI. Intrigued, she quietly said “Seraph? What are you trying to tell me?” Oblivious to the perilous journey awaiting her, she delved deeper into decoding the message, unaware of the secrets it held and the dangerous path she was about to embark on.")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: Chapter2View()) {
                        Text("CHAPTER 2: SECRETS UNRAVELED -->")
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
    LilySeraph()
}
