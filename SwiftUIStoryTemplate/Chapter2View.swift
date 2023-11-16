import SwiftUI

struct Chapter2View: View {
    var body: some View {
        
        
        NavigationStack{
        
        ZStack {
            
            
            
            // .foregroundColor(.white)
            Color .black
                .ignoresSafeArea()
            
            
            VStack{
                Text("Chapter 2: Secrets Unraveled")
                    .padding()
                    .foregroundStyle(.cyan)
                    .font(.custom("pixelmix", size:12))
                
                
                Text("Lily woke up with a headache. As she lifted her head up from her computer desk she was confused for a moment.")
                    .foregroundStyle(.cyan)
                    .frame(width:350)
                    .font(.custom("pixelmix", size:12))
                    .padding(5)
                
                
                
                Image(.lilyHeadache)
                    .resizable()
                    .scaledToFit()
                
                
                
                Text("As she looked at her reflection in the black computer screen she could see the outline of her glasses pressed into her face. Suddenly she got excited. She nervously touched her mouse to wake her computer and see where she had left off. As Xcode appears on the screen, she scanned her code and pressed build. As she did, a matrix of green zeros and ones greens up her arm and eventually takes over her whole body.")
                    .foregroundStyle(.cyan)
                    .frame(width: 350)
                    .font(.custom("pixelmix", size:12))
                    .padding(5)
                
                Image(.codeTakingOver)
                    .resizable()
                    .scaledToFit()
                
                
              //  NavigationLink(destination: Chapter2Page2View()) {
                    
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


#Preview {
    Chapter2View()
    
}
