import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.


struct ContentView: View {
    
    // @State var chapterTitles = ["Chapter 1: The Quiet Coder", "Chapter 2: Secrets Unraveled", "Chapter 3: Rise of the Code Slinger", "Chapter 4: The Battle Begins", "Chapter 5: Triumph of Humanity"]
    
//    @State private var chapter1Title = ""
//    @State private var chapter2Title = ""
//    @State private var chapter3Title = ""
//    @State private var chapter4Title = ""
//    @State private var chapter5Title = ""
//
    
    // @State private var displayedChapterNames: [String] = ["", "", "", "", ""]
//
//    func printChapterOneTitle(phrase: String, speed: TimeInterval = 0.03) {
//        for (index, charachter) in phrase.enumerated() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
//                chapter1Title.append(charachter)
//            }
//        }
//    }
//
//    func printChapterTwoTitle(phrase: String, speed: TimeInterval = 0.03) {
//        for (index, charachter) in phrase.enumerated() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
//                chapter2Title.append(charachter)
//            }
//        }
//    }
//    func printChapterThreeTitle(phrase: String, speed: TimeInterval = 0.03) {
//        for (index, charachter) in phrase.enumerated() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
//                chapter3Title.append(charachter)
//            }
//        }
//    }
//    func printChapterFourTitle(phrase: String, speed: TimeInterval = 0.03) {
//        for (index, charachter) in phrase.enumerated() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
//                chapter4Title.append(charachter)
//            }
//        }
//    }
//    func printChapterFiveTitle(phrase: String, speed: TimeInterval = 0.03) {
//        for (index, charachter) in phrase.enumerated() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
//                chapter5Title.append(charachter)
//            }
//        }
//    }
//
    
    
    
    //    func printChapterTitle(forIndex index: Int, speed: TimeInterval = 0.03) {
    //        guard !chapterTitles.isEmpty && !displayedChapterNames.isEmpty else { return }
    //
    //        let phrase = chapterTitles[0]
    //
    //        for (index, charachter) in phrase.enumerated() {
    //            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
    //                print(displayedChapterNames[0])
    //                text.append(charachter)
    //            }
    //        }
    //    }
    
    
    //    func printSlow(phrase: String, speed: TimeInterval = 0.03) {
    //         for (index, charachter) in phrase.enumerated() {
    //             DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
    //                 displayedText.append(charachter)
    //
    var body: some View {
        
        
        ZStack{
            
            Color.black
                .ignoresSafeArea()
            
            
            VStack{
                
                NavigationLink {
                    EnterByteville()
                } label: {
                    
                    
                    Text("Chapter 1: The Quiet Coder")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 20))
                    
                    
                }
                .padding()
                .padding()
                
                NavigationLink {
                    Chapter2View()
                } label: {
                    
                    Text ("Chapter 2: Secrets Unraveled")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 20))
                    
                }
                    
                        .padding()
                        .padding()
                
                    
                    NavigationLink {
                        Chapter3View()
                    } label: {
                        Text ("Chapter 3 : Rise of the Code Slinger")
                            .foregroundColor(.codeblue)
                            .font(.custom("pixelmix", size: 20))
                        
                    }
                    .padding()
                    .padding()
                    
                    
                    NavigationLink {
                        Chapter4View()
                    } label: {
                        Text ("Chapter 4 : The Battle Begins")
                            .foregroundColor(.codeblue)
                            .font(.custom("pixelmix", size: 20))
                        
                    }
                    .padding()
                    .padding()
                    
                    
                    NavigationLink {
                        DrEvilSwiftUIView()
                    } label: {
                        Text ("Chapter 5 : Triumph of Humanity")
                            .foregroundColor(.codeblue)
                            .font(.custom("pixelmix", size: 20))
                    }
                    .padding()
                    .padding()
                    
                
            }
        }
    }
}
#Preview {
        ContentView()
    }

//        TabView {
//            Chapter1View()
//                .tabItem {
//                    Label("Chapter 1", systemImage: "1.circle")
//                }
//            Chapter2View()
//                .tabItem {
//                    Label("Chapter 2", systemImage: "2.circle")
//                }
//            Chapter3View()
//                .tabItem {
//                    Label("Chapter 3", systemImage: "3.circle")
//                }
//            Chapter4View()
//                .tabItem {
//                    Label("Chapter 4", systemImage: "4.circle")
//                }
//            Chapter5View()
//                .tabItem {
//                    Label("Chapter 5", systemImage: "5.circle")
//                }
//        }
