//
//  DrEvilMrSmith.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct DrEvilMrSmith: View {
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

                    Image("EvilSmith")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .padding()
                        .aspectRatio(contentMode: .fit)
                    Image("EvilLaugh")
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
                        printSlow(phrase: "Beside him was Mr. Smith, his loyal but uneasy assistant.  Mr. Smith voiced his concerns and nervously asked “But sir, what about Seraph?  It’s still currently operational.” Dr. Evil chuckled darkly as he said 'Seraph is outdated and no longer has a purpose for my bigger plans Mr. Smith.  We need something more…sinister.' ")
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
#Preview {
    DrEvilMrSmith()
}
