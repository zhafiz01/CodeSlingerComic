import SwiftUI

struct Chapter5View: View {
    
    
    @State private var displayedText2: String = ""
    
    func printSlow2(phrase: String, speed: TimeInterval = 0.4) {
        for (index, charachter) in phrase.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
                displayedText2.append(charachter)
                
            }
        }
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            VStack{
                
                
                Text("THE END")
                    .font(.custom("pixelmix", size: 30))
                    .foregroundColor(.codeblue)
                    .padding()
                
                Text(displayedText2)
                    .font(.custom("pixelmix", size: 30))
                    .foregroundColor(.codeblue)
                
            }
            .onAppear{
                printSlow2(phrase: "....or is it?")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    Chapter5View()
}
