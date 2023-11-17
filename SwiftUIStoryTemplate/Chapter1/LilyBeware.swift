//
//  LilyBeware.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//

import SwiftUI

struct LilyBeware: View {
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
                    Image("LilyBeware")
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

                    Button("CLICK TO DECODE MESSAGE") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "'ZKL3*&;lAO99A#@$ 'Lily... b3w@r3 0f the d@rkn3$$ th@t @pproache$. Y0u @re th3 k3y.'")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: LilySeraph()) {
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
    LilyBeware()
}
