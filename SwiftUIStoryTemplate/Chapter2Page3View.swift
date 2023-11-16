//
//  Chapter2Page3View.swift
//  SwiftUIStoryTemplate
//
//  Created by Jacinta Chevon on 11/15/23.
//

import SwiftUI
import AVKit


struct Chapter2Page3View: View {
    

    var body: some View {
        
        ZStack {
            
            Color .black
                .ignoresSafeArea()
            
            
            VStack{ VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "computeranimation", withExtension: "mp4")!))
                    .frame(width:350, height:450)
                
                Text("Lily...your bravery needed...Dr. Evil...AI...control humanity...beware...")
                    .foregroundStyle(.cyan)
                    .frame(width:350)
                
                
                
                Image(systemName: "arrow.right.circle")
                    .foregroundColor(.cyan)
                    .padding(15)
                
            }
        }
            
            NavigationLink(destination: Chapter2Page4View()){
                Image(systemName: "arrow.right.circle")
                    .foregroundColor(.cyan)
                    .padding(15)
               
                                }
                            }
                        }
                    
                
                
    

    
    
    

#Preview {
    Chapter2Page3View()
    
}
