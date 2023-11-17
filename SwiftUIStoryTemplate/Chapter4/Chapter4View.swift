import SwiftUI

struct Chapter4View: View {
    
    @State private var displayedText: String = ""
    
    func printSlow(phrase: String, speed: TimeInterval = 0.09) {
        for (index, charachter) in phrase.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
                displayedText.append(charachter)
                
            }
        }
    }
    
    
    var body: some View {
        
        
        
        
        ZStack{
            Color.black
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
            
            
            ScrollView{
                
                VStack{
                    
                    
                    Text(displayedText)
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size:18))
                        .padding(10)
                    
                    
                    Image(.lillyonroof)
                        .resizable()
                        .scaledToFit()
                    
                    
                    Text("Code Slinger, now fully confident in her abilities, stands atop a towering building surveyed her city, her determination unwavering. The calm before the storm enveloped Byteville. She activates her advanced technology, scanning the city for any signs of Aetheris.")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    
                    Image(.phpic)
                        .resizable()
                        .scaledToFit()
                    
                    
                    Text("Aetheris, represented by a complex web of glowing code, pulsates with malevolent energy. Dr. Evil watches, a triumphant smile on his face.")
                    
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    
                    Image(.whodares)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Code Slinger grits her teeth, focusing on breaking through Aetheris's defenses.Code Slinger accesses her suit's interface, initiating a series of complex hacking maneuvers.")
                    
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    Image(.timetolevel)
                        .resizable()
                        .scaledToFit()
                    
                    
                    
                    Image(.wontstopme)
                        .resizable()
                        .scaledToFit()
                    
                    
                    Text("Aetheris launches a powerful counterattack, its code surging with  energy. Code Slinger gritting her teeth \"No! this cant be happening!\" Aetheris weakens, its defenses crumbling under Code Slinger's relentless assault.")
                    
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    
                    
                    
                    Image(.csattack)
                        .resizable()
                        .scaledToFit()
                    
                    
                    Text("Code Slinger lands the final blow, her eyes determined. Aetheris's code shatters, dissipating into the digital ether.")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    
                    Image(.beatupdrevil)
                        .resizable()
                        .scaledToFit()
                    
                    Image(.deadai)
                        .resizable()
                        .scaledToFit()
                    
                    
                    
                    Text("Code Slinger stands on a rooftop, watching over Byteville. The city stirs back to life, unaware of the battle fought and won by thier silent guardian.")
                        .foregroundColor(.codeblue)
                        .font(.custom("pixelmix", size: 15))
                        .padding(10)
                    
                    Image(.onroofafter)
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                    
//                                            .toolbar {
//                                                ToolbarItem(placement:.bottomBar) {
//                                                    HStack {
//                                                        Text("")
//                                                        NavigationLink(destination: Chapter5View()) {
//                                                            Image(systemName: "arrowshape.right")
//                                                                .foregroundColor(.codeblue)
//                                                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                                                        }
//                                                    }
//                    }
//                }
                    
                    //                    HStack{
                    //
                    //                NavigationLink {
                    //                            ContentView()
                    //                        } label: {
                    //                            Label("Table of Contents", systemImage: "arrowshape.left")
                    //                                .foregroundColor(.codeblue)
                    //                                .font(.custom("pixelmix", size: 15))
                    //
                    //                        }
                    //
                    //                        NavigationLink {
                    //                            Chapter5View()
                    //                        } label: {
                    //                           Image("arrowshape.right")
                    //                                .foregroundColor(.codeblue)
                    //                                .font(.custom("pixelmix", size: 15))
                    //
                    //                        }
                    //                    }
                    //
                    //                }
                    
                    
                    
                    
                        .onAppear{
                            printSlow(phrase: "Chapter 4: The Battle Begins")
                        }
                        
                    
                    HStack{
                        
                        
                        
                        NavigationLink {
                            
                            Chapter3View()
                        } label: {
                            Text("Previous Chapter")
                                .foregroundColor(.codeblue)
                                .font(.custom("pixelmix", size: 15))
                                .padding()
                           
                        }
                        
                        NavigationLink {
                            
                            ContentView()
                        } label: {
                            Text("Table of Contents")
                                .foregroundColor(.codeblue)
                                .font(.custom("pixelmix", size: 15))
                                .padding()
                            
                        }
                        
//                        NavigationLink {
//                                    
//                            Chapter5View()
//                        } label: {
//                            Text("Next Chapter")
//                                .foregroundColor(.codeblue)
//                                .font(.custom("pixelmix", size: 15))
//                                .padding()
//                           
                        //}
                        
                    
                    }
                }
                      
                        
                    }
                        
                }
            }
        }
    

        #Preview {
            Chapter4View()
        }
    
