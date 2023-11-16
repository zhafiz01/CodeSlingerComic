//
//  Chapter2Page4View.swift
//  SwiftUIStoryTemplate
//
//  Created by Jacinta Chevon on 11/15/23.
//

import SwiftUI

struct Chapter2Page4View: View {
    var body: some View {
        
        ZStack{
            Color .black
                .ignoresSafeArea()

            
            VStack{
                
                Image(.drevilgreenglow)
                    .resizable()
                    .scaledToFit()
                
                Text("Meahwhile, at INNOVATECH CORPORATION - DR. EVIL is busy at work. His face bathed in the eerie glow of the computer screen, monitors Aetheris's progress.")
                    .foregroundStyle(.cyan)
                    .frame(width:350)
                    .font(.custom("pixelmix", size:12))
                    .padding(5)
            }
        }
    }
}

#Preview {
    Chapter2Page4View()
}
