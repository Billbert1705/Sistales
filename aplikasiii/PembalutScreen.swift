//
//  PembalutScreen.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct PembalutScreen: View {
    @State private var size = UIScreen.main.bounds.size
    @State var isAudioEnabled = false
    
    var body: some View {
        NavigationStack{
            NavigationLink{
                PembalutEdu2()
            }label: {
                ZStack{
                    Image("PintuKamarMandi")
                        .resizable()
                        .frame(width: 400, height:900)
                        .ignoresSafeArea()
                    
                    VStack{
                        HStack{
                            NavigationLink{
                                sectionBillaScreen()
//                                sectionBillaScreen(buttonMuncul: true, tapCount : 1)
                            }label: {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 34)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(.black)
                            }
                            Spacer()
//                            Image("imageSound")
//                                .resizable()
//                                .frame(width: 43, height: 43)
//                                .padding(.horizontal, 15)
//                                .frame(maxWidth: .infinity, alignment: .trailing)
//                            AudioToggleButton(isAudioEnabled: $isAudioEnabled)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 25)
                        }
                        .padding(.top, 90)
//                        Spacer()
                        Image("dompetDua")
                            .scaleEffect(0.6)
                            .position(x: size.width/1.75, y: size.height/2.2)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 343, height: 80)
                                .foregroundColor(.white)
                            Text("Lalu kamu memberi Dini pembalut.")
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                                .padding(.top,5)
                                .padding(.horizontal, 40)
                            
                        }
                        .padding(.bottom,150)
                        .navigationBarBackButtonHidden(true)
                    }
                }
            }
        }
        
    }
}

struct PembalutScreen_Previews: PreviewProvider {
    static var previews: some View {
        PembalutScreen()
    }
}
