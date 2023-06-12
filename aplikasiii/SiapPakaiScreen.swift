//
//  SiapPakaiScreen.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct SiapPakaiScreen: View {
    @State private var size = UIScreen.main.bounds.size
    @State var isAudioEnabled = false
    
    var body: some View {
        NavigationStack{
            NavigationLink{
                screenqoni()
            }label:{
                ZStack{
                    
                    Image("screenSiap")
                        .resizable()
                        .frame(width: 400, height: 900)
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            NavigationLink{
                                PembalutEdu2()
                                
//                                (buttonMuncul: true, tapCount : 1)
                            }label: {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 34)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(.black)
                            }
                            Spacer()
//                            AudioToggleButton(isAudioEnabled: $isAudioEnabled)
//                                .foregroundColor(.black)
//                                .padding(.trailing, 25)
                        }
                        .padding(.top, 70)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 343, height: 80)
                            .foregroundColor(.white)
                            .overlay(Text("Sip, udah kan.\nKe kantin yuk?"))
                            .position(x: size.width/2, y: size.height-225)
                    }
                }
                .foregroundColor(.black)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SiapPakaiScreen_Previews: PreviewProvider {
    static var previews: some View {
        SiapPakaiScreen()
    }
}
