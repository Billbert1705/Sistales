//
//  screenqoni.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 07/06/23.
//

import SwiftUI

struct screenqoni: View {
    @State private var size = UIScreen.main.bounds.size
    //@State var bubble = 1
    @State var diniMuncul = false
    @State var buttonMuncul = false
    @State private var tapCount = 0
    
    //    func incrBubble() {
    //        if bubble <= 2{
    //            bubble += 1
    //        }
    
    
    var body: some View {
        
        
        
        ZStack{
            Image("kantin")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
                    .padding(.horizontal, 15)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Image("dini1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225)
                    .position(x: size.width/3.6, y: size.height/1.6)
                    .opacity(tapCount > 0 ? 1 : 0)
//                    .opacity(tapCount == 1 || tapCount == 2 ? 1 : 0) ALTERNATIF AJE
                Image("es")
                
                
                
                Spacer()
                if tapCount == 0{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 343, height: 80)
                            .foregroundColor(.white)
                        Text("Sesampai di kantin..")
                    }
                    .padding(.bottom, 70)
                }else{
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
                }
            }
            VStack{
                Spacer()
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
                .opacity(tapCount == 2 ? 1 : 0)
                
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
                .opacity(tapCount == 2 ? 1 : 0)
                
                Spacer()
            }
        }.onTapGesture{
            tapCount += 1
            //            incrBubble()
            diniMuncul = true
            buttonMuncul = true
            
        }
    }
    
    
    
    struct screenqoni_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni()
        }
    }
}
