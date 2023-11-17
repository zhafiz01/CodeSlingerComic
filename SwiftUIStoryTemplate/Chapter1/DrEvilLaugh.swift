//
//  DrEvilLaugh.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct DrEvilLaugh: View {
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
                    Image("EvilLaugh")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 450, height: 450)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        .padding()
                        .padding()
                        .padding()

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding()
                    }

                    NavigationLink(destination: LilyWhatsThis()) {
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
struct DrEvilLaugh_Previews: PreviewProvider {
    static var previews: some View {
        DrEvilLaugh()
    }
}

#Preview {
    DrEvilLaugh()
}
