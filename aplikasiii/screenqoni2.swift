//
//  screenqoni2.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 07/06/23.
//

import SwiftUI

struct screenqoni2: View {
    @State private var size = UIScreen.main.bounds.size
    var body: some View {
        
        ZStack{
            Image("kantin")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
                    .padding(.horizontal, 15)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
            }
            Image("dini1")
                .resizable()
                .scaledToFit()
                .frame(width: 225)
                .position(x: size.width/3.6, y: size.height/1.6)
                
            VStack{
                Spacer()
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
                        .padding(.horizontal, 25)
                }
                .frame(width: 343, height: 141)
                .padding(.bottom, 70)
                
            }
            VStack{
                Spacer()
//                Spacer()
                Button(action:{}, label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 343, height: 56)
                            .shadow(radius: 0, x: 4, y: 4)
                        Text("MITOS")
                            .font(.system(size: 17))
                            .foregroundColor(.black)
                    }
                }
                )
                .foregroundColor(Color("pink"))
                
                
                Button(action:{}, label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 343, height: 56)
                            .shadow(radius: 0, x: 4, y: 4)
                        Text("FAKTA")
                            .font(.system(size: 17))
                            .foregroundColor(.black)
                    }
                }
                )
                
                .foregroundColor(Color("pink"))
                
                
                
                Spacer()
                
                
            }
        }
    }
    
    struct screenqoni2_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni2()
        }
    }
}
