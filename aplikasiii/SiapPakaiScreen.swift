//
//  SiapPakaiScreen.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct SiapPakaiScreen: View {
    @State private var size = UIScreen.main.bounds.size
    
    
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
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 343, height: 80)
                        .foregroundColor(.white)
                        .overlay(Text("Sip, udah kan.\nKe kantin yuk?"))
                        .position(x: size.width/2, y: size.height-100)
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct SiapPakaiScreen_Previews: PreviewProvider {
    static var previews: some View {
        SiapPakaiScreen()
    }
}
