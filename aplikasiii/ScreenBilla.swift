//
//  ScreenBilla.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct ScreenBilla: View {
    @State private var size = UIScreen.main.bounds.size
    @State var diniMuncul = false
    @State var buttonMuncul = false
    @State var tapCount = 0
    @State private var slideOffset: CGFloat = 0
    @Binding var isNextScreenActive: Bool
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: sectionBillaScreen(), isActive: Binding<Bool>(
                get: { tapCount > 2 },
                set: { _ in }
            ))  {
                ZStack{
                    Image("toiletBackground")
                        .resizable()
                        .frame(width: 400, height: 900)
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 34)
                                .padding(.horizontal, 25)
                                .foregroundColor(.black)
                            Spacer()
                            Image("imageSound")
                                .resizable()
                                .frame(width: 43, height: 43)
                                .padding(.horizontal, 15)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding(.top, 90)
                        
                        Image("diniSad")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 400, height: 1000)
//                            .position(x: size.width/3, y: size.height/2 + 150)
//                            .opacity(tapCount > 0 && tapCount <= 2 ? 1 : 0)
//                            .offset(x: tapCount > 0 ? 0 : 50, y: 0)
//                            .animation(.easeInOut) // Apply animation to the offset
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 600)
                            .position(x: size.width/3, y: size.height/2)
                            .opacity(tapCount > 0 && tapCount <= 2 ? 1 : 0)
                            .offset(x: tapCount > 0 ? 0 : 50, y: 0)
                            .animation(.easeInOut)
//                        Spacer()
                        
                        if tapCount == 0 {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 343, height: 80)
                                    .foregroundColor(.white)
                                Text("Sesampai di toilet . . .").foregroundColor(.black)
                            }
                            .padding(.bottom, 100)
                        }
                        if tapCount == 1{
                            ZStack{
                                Image("bubblekiri")
                                    .resizable()
                                    .frame(width: 343, height: 80)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 343, height: 80)
                                    .foregroundColor(.white)
                                Text("Aduh darahnya banyak banget, aku harus pake apa?").foregroundColor(.black)
                                    .font(.system(size: 17))
                                    .padding(.top,5)
                                    .padding(.horizontal, 40)
                                
                            }
                            .padding(.bottom,100)
                        }
                        if tapCount == 2{
                            ZStack{
                                Image("bubblekiri")
                                    .resizable()
                                    .frame(width: 343, height: 80)
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 343, height: 80)
                                    .foregroundColor(.white)
                                Text("Apa yang harus dipakai Dini saat mengalami menstruasi?").foregroundColor(.black)
                                    .font(.system(size: 17))
                                    .padding(.top,5)
                                    .padding(.horizontal, 40)
                                
                            }
                            .padding(.bottom,90)
                        }
                    }
                    
                    
                }
                .onTapGesture{
                    if(tapCount == 2){
                        buttonMuncul = true
                    }
                    withAnimation {
                        if tapCount <= 2 {
                            tapCount += 1
                        }
                        diniMuncul = true
                        //                slideOffset += 100 // Adjust the slide offset value as needed
                        //            }
                    }
                }.navigationBarBackButtonHidden(true)
            }
            
        }
        
    }
    
//    struct ScreenBilla_Previews: PreviewProvider {
//        static var previews: some View {
//            ScreenBilla()
//        }
//    }
}
