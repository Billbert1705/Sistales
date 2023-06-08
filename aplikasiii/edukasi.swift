//
//  edukasi.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 08/06/23.
//

import SwiftUI

struct edukasi: View {
    @State private var size = UIScreen.main.bounds.size
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
                
                ScrollView(.horizontal){
                    HStack(spacing:25){
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 343, height: 557)
                                .foregroundColor(.white)
                            VStack{
                                Image("es2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 174, height: 167)
                                    .padding(.top,50)
                                
                                Text("Pernah ga sih denger\nkalo menstruasi ga boleh minum minuman dingin?\nkarena katanya dianggap bisa membekukan darah dan menggangu siklus menstruasi?\n\nBener ga sih?")
                                    .font(.system(size: 17))
                                    .padding(.top,50)
                                    .padding(.horizontal, 30)
                                
                            }
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.bottom, 100)
                            .frame(width: 343, height: 557)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 343, height: 557)
                                .foregroundColor(.white)
                            VStack{
                                Image("uterus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 174, height: 167)
                                    .padding(.top,50)
                                
                                Text("Ternyata, anggapan minum dingin saat menstruasi nyebabin pembekuan darah dan gangguan siklus menstruasi adalah mitos belaka.\n\nFakta sebenarnya siklus menstruasi wanita diatur dan dipengaruhi oleh keseimbangan hormon estrogen dan progesteron di dalam tubuh.")
                                    .font(.system(size: 17))
                                    .padding(.top,10)
                                    .padding(.horizontal, 30)
                                
                                
                            }
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.bottom, 70)
                            .frame(width: 343, height: 557)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 343, height: 557)
                                .foregroundColor(.white)
                            VStack{
                                Image("kalen")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 174, height: 167)
//                                    .padding(.top,5)
                                
                                Text("Menstruasi berhubungan dengan sistem reproduksi wanita, sedangkan makanan & minuman berhubungan dengan sistem pencernaan.\n\n Jadi, mengonsumsi minuman dingin tidak berpengaruh pada keterlambatan menstruasi seseorang.\n\nMenstruasi yang datang terlambat disebabkan oleh tiga hal, yaitu adanya masalah pada dinding rahim, masalah hormonal dari indung telur, dan masalah psikologis seperti stres.")
                                    .font(.system(size: 17))
//                                    .padding(.top,10)
                                    .padding(.horizontal, 20)
                            }
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .padding(.bottom, 20)
                            .frame(width: 343, height: 557)
                        }
                    }
                    //                .padding(.top,40)
                    .padding(.bottom, 115)
                    .padding(.leading,25)
                    .padding(.trailing,25)
                }
            }
        }
        
    }
}
    
    struct edukasi_Previews: PreviewProvider {
        static var previews: some View {
            edukasi()
        }
    }

