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
                    Image("EvilSmith")
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

                    Button(action: {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "Beside him was Mr. Smith, his loyal but uneasy assistant.  Mr. Smith voiced his concerns and nervously asked “But sir, what about Seraph?  It’s still currently operational.” Dr. Evil chuckled darkly as he said 'Seraph is outdated and no longer has a purpose for my bigger plans Mr. Smith.  We need something more…sinister. MWAHAHAHAHAHAH'")
                        }
                    }) {
                        Text("Begin Dr Evil's Evil Plan")
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                            .padding()
                    }

                    NavigationLink(destination: DrEvilLaugh()) {
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



// Use this for preview
struct DrEvilMrSmith_Previews: PreviewProvider {
    static var previews: some View {
        DrEvilMrSmith()
    }
}

#Preview {
    DrEvilMrSmith()
}
