//
//  EnterByteville.swift
//  SwiftUIStoryTemplate
//
//  Created by Zeeshan Hafiz on 11/16/23.
//
import SwiftUI

struct EnterByteville: View {
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
                    Image("Byte")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .padding()

                    ScrollView {
                        Text(displayedText)
                            .foregroundColor(.cyan)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .padding()
                    }

                    Button("Begin The Day At Byteville") {
                        withAnimation {
                            displayedText = ""
                            printSlow(phrase: "The day started like any other day, but today in the city of Byteville everything was about to change...")
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.cyan))
                    .padding()

                    NavigationLink(destination: CmonLily()) {
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
    EnterByteville()
}
