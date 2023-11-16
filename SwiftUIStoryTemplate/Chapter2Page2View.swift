//
//  Chapter2Page2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Jacinta Chevon on 11/15/23.
//
import SwiftUI

struct Chapter2Page2View: View {
    var body: some View {
        
        
        NavigationStack{
            
            ZStack {
                
                
                // .foregroundColor(.white)
                Color .black
                    .ignoresSafeArea()
                
                
                VStack{
                    
                    
                    
                    Text("She jumps back from her computer chair and as she does her eyes can see the code of everything electronic in her room. She looks at her phone and can see the code of every app in her phone simultaneously. She even sees a few bugs and is able to fix them with just a thought.")
                        .foregroundStyle(.cyan)
                        .frame(width:350)
                        .font(.custom("pixelmix", size:12))
                    
                    
                    Image(.greensuit)
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                    
                    
                    
                    Text("Lily realizes her mind is thinking in code and she can control every bit of code she sees with just her thoughts. Suddenly, A distorted message flickers on her screen repeatedly, remnants of Seraphis warning. Seraphis types out a message.")
                    .foregroundStyle(.cyan)
                    .frame(width:350)
                    .font(.custom("pixelmix", size:12))
                    .padding(5)
                    
                    Image(.computerscreen)
                        .resizable()
                        .scaledToFit()
                    
                    
                    NavigationLink(destination: Chapter2Page3View()){
                        Image(systemName: "arrow.right.circle")
                            .foregroundColor(.cyan)
                            .padding(15)
                    }
                    
                 
                    
                }
                
            }
            
            
        }
        
    }
}
#Preview {
    Chapter2Page2View()
    
}
