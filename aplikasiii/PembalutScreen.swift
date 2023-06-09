//
//  PembalutScreen.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct PembalutScreen: View {
    @State private var size = UIScreen.main.bounds.size
    
    var body: some View {
        NavigationStack{
            NavigationLink{
                PembalutEdu()
            }label: {
                ZStack{
                    Image("PintuKamarMandi")
                        .resizable()
                        .frame(width: 400, height:900)
                        .ignoresSafeArea()
                    
                    VStack{
                        Image("dompetDua")
                            .scaleEffect(0.5)
                            .position(x: size.width/2, y: size.height/2 + 110)
                        
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
