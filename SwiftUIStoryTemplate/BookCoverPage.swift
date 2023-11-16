//
//  BookCoverPage.swift
//  SwiftUIStoryTemplate
//
//  Created by Ariel Rue  on 11/16/23.
//

import SwiftUI

struct BookCoverpage: View {
    //@State private var angle: Double = 0
    var body: some View {
        
        
        // need the navigation stack on the page before the page you want the link to take you to , or call.
        
        NavigationStack{
            
            ZStack {
                
                Spacer()
                Image(.bookcover2)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                
//                Image(.bookcovercircles)
//
//                    .position(x: 85, y: 166)
//                    .padding()
//                    .rotationEffect(.degrees(angle))
//                    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: angle)
//
                
                VStack {
                    //                Text("Code Slinger")
                    //                    .foregroundColor(.black)
                    //                    .font(.custom("pixelmix", size: 35))
                    //
                    Spacer()
                    
//
//                    Image(.bookcovercircles)
//                        .position(x: 360, y: 620)
//
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        
                        Spacer()
                        Image(.buttoncc2)
                            .padding()
                            .frame(maxHeight: .infinity, alignment: .bottom)
                        
                        Spacer()
                        
                        
                    }
                    
                    Spacer()
                    
                    
                    
                    
                }
            }
        }
    }
    
}
    #Preview {
        BookCoverpage()
    }
    

