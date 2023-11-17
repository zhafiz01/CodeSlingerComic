//
//  LilyWhatsThis.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct LilyWhatsThis: View {
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
                    Image("WhatsThis2")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .scaledToFit()
                        .padding()

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding()
                    }

                    Button("What Is It?!") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "Back in the confines of Lily's workstation, her eyes widened as she stumbled upon a peculiar line of code buried deep within the system. Intrigued, Lily whispered, 'What's this?' As her curiosity piqued, she clicked on the mysterious code, unleashing a cascade of strange symbols and algorithms that pulsated on her screen as if it was attempting to communicate with her.")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: LilyBeware()) {
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

//// Use this for preview
//struct LilyWhatsThis_Previews: PreviewProvider {
//    static var previews: some View {
//        LilyWhatsThis()
//    }
//}


#Preview {
    LilyWhatsThis()
}
