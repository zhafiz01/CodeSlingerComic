//
//  Chapter2Page5View.swift
//  SwiftUIStoryTemplate
//
//  Created by Jacinta Chevon on 11/16/23.
//

import SwiftUI

struct Chapter2Page5View: View {
    var body: some View {
        
        NavigationStack{
            
            
            ZStack{
                Color .black
                    .ignoresSafeArea()
                
                
                VStack{
                    
                    Image(.lilyresearching)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Back at Lily's apartment she is surrounded by stacks of printouts and notes, pieces together data from various sources, connecting the dots between Dr. Evil's plan and Aetheris.  Her computer screen lights up as diagrams and graphs appear, illustrating Aetheris's potential for destruction. I won't back down. Aetheris will face the might of my determination. Byteville deserves better. With newfound resolve, Lily delves deeper into the digital realm, ready to confront the looming threat and protect her town from the impending darkness.")
                        .foregroundStyle(.cyan)
                        .frame(width:350)
                        .font(.custom("pixelmix", size:12))
                        .padding(5)
                    
                    NavigationLink(destination: Chapter4View()) {
                        
                        HStack{
                            // Text("Go")
                            
                            Image(systemName: "arrow.right.circle")
                                .foregroundColor(.cyan)
                                .padding(15)
                            
                        }
                    }
                }
            }
        }
        
        
        
        
    }
}
#Preview {
    Chapter2Page5View()
}
