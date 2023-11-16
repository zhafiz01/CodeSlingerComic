import SwiftUI

struct Chapter4View: View {
    var body: some View {
        
            
        
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                ScrollView{

                VStack{
                    
                    Text("Chapter 4: The Battle Begins")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 20))
                    
                    
                }
                
                
            }
            
        }
        
        
       
    }
}

#Preview {
    Chapter4View()
}
