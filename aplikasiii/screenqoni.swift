//
//  screenqoni.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 07/06/23.
//

import SwiftUI

struct screenqoni: View {
    @State private var size = UIScreen.main.bounds.size
    @State var diniMuncul = false
    @State var buttonMuncul = false
    @State var tapCount = 0
    @State private var slideOffset: CGFloat = 0
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("kantin")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        NavigationLink{
                            SiapPakaiScreen()
                        }label:{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 34)
                                .padding(.horizontal, 25)
                                .foregroundColor(.black)
                        }
                        Spacer()
//                        Image("imageSound")
//                            .resizable()
//                            .frame(width: 43, height: 43)
//                            .padding(.horizontal, 15)
//                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    Image("diniEs")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 1000)
                        .position(x: size.width/2, y: size.height/2)
                        .opacity(tapCount > 0 ? 1 : 0)
                        .offset(x: tapCount > 0 ? 0 : 50, y: 0)
                        .animation(.easeInOut) // Apply animation to the offset
                    
                    Spacer()
                    
                    if tapCount == 0 {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 343, height: 80)
                                .foregroundColor(.white)
                            Text("Sesampai di kantin..")
                        }
                        .padding(.bottom, 70)
                    } else {
                        ZStack{
                            Image("bubblekiri")
                                .resizable()
                                .frame(width: 343, height: 160)
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 343, height: 80)
                                .foregroundColor(.white)
                            Text("Aku pengen yang dingin-dingin deh soalnya gerah banget! Tapi aku pernah denger katanya kalo lagi menstruasi gaboleh minum minuman dingin ya? Bener ga sih?")
                                .font(.system(size: 17))
                                .padding(.top,5)
                                .padding(.horizontal, 40)
                            
                        }
                        .padding(.bottom,40)
                    }
                }
                
                VStack{
                    Spacer()
                    
                    NavigationLink{
                        edukasi_2()
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 343, height: 56)
                                .shadow(radius: 0, x: 4, y: 4)
                            Text("MITOS")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                        }
                    }
                    
                    .foregroundColor(Color("pink"))
                    .opacity(buttonMuncul == true ? 1 : 0)
                    
                    NavigationLink{
                        edukasi()
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 343, height: 56)
                                .shadow(radius: 0, x: 4, y: 4)
                            Text("FAKTA")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                            
                        }
                    }
                    .foregroundColor(Color("pink"))
                    .opacity(buttonMuncul == true ? 1 : 0)
                    Spacer()
                }
                
                
                
            }
            .onTapGesture{
                if(tapCount == 1){
                    buttonMuncul = true
                }
                withAnimation {
                    tapCount += 1
                    diniMuncul = true
                    //                slideOffset += 100 // Adjust the slide offset value as needed
                    //            }
                }
            }.navigationBarBackButtonHidden(true)
            
        }
        
    }
    
    struct screenqoni_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni()
        }
    }
}
