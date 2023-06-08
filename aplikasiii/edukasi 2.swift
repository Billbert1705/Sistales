//
//  edukasi 2.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 08/06/23.
//

import SwiftUI

struct edukasi_2: View {
    var body: some View {
        ZStack{
            Image("bgedu")
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
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 343, height: 557)
                        .foregroundColor(.white)
                    VStack{
                        Image("lampu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 174, height: 167)
//                            .padding(.top,5)
                        
                        Text("Yeay, BENER banget! Jadi, ga boleh minum minuman dingin saat menstruasi itu MITOS ya!\n\nBanyak yang bilang, minuman dingin bisa membekukan darah menstruasi, namun ini salah ya.\n\nMakanan dan minuman masuknya ke sistem pencernaan, sementara proses menstruasi itu ada di sistem reproduksi.")
                            .font(.system(size: 17))
                            .padding(.top,35)
                            .padding(.horizontal, 20)
                        
                    }
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.bottom, 10)
                    .frame(width: 343, height: 557)
                }
                .padding(.bottom, 70)
                Text("Tap untuk Lanjut!")
                    .padding(.bottom, 15)}
        }
    }
    struct edukasi_2_Previews: PreviewProvider {
        static var previews: some View {
            edukasi_2()
        }
    }
}
