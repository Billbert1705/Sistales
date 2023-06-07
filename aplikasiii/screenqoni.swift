//
//  screenqoni.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 07/06/23.
//

import SwiftUI

struct screenqoni: View {
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
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 343, height: 80)
                        .foregroundColor(.white)
                    Text("Sesampai di kantin..")
                }
                .padding(.bottom, 70)
            }
        }
        }
    }


struct screenqoni_Previews: PreviewProvider {
    static var previews: some View {
        screenqoni()
    }
}
