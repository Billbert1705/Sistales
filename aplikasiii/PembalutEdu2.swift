//
//  PembalutEdu2.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 12/06/23.
//

import SwiftUI

struct PembalutEdu2: View {
    @State private var size = UIScreen.main.bounds.size
    var body: some View {
        NavigationLink{
            SiapPakaiScreen()
        }label: {
            ZStack{
                Image("bgedu")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        NavigationLink{
                            PembalutScreen()
                        }label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 34)
                                .padding(.horizontal, 20)
        //                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.black)
                        }
                        Spacer()
//                        Image("imageSound")
//                            .resizable()
//                            .frame(width: 43, height: 43)
//                            .padding(.horizontal, 15)
//                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Spacer()
                    
                    ScrollView(.horizontal){
                        HStack(spacing:25){
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 343, height: 557)
                                    .foregroundColor(.white)
                                VStack{
                                    Image("Pembalut")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 174, height: 167)
                                        .padding(.top)
                                    
                                    Text("Pembalut harus diganti\nsetiap 4-6 jam sekali loh!\n\nTersedia dalam berbagai ukuran, daya serap, dan bahan serta terdiri dari desain berlapis yang terbuat dari campuran plastik, rayon, dan kapas.\n\nBentuknya juga macam-macam, ada yang tanpa sayap dan bersayap biar ga bocor dan ngejaga pembalut tetap nempel\ndi celana dalam!")
                                        .font(.system(size: 17))
                                        .padding(.top,20)
                                        .padding(.horizontal, 30)
                                    
                                }
                                .padding(.leading,20)
                                .padding(.trailing,20)
                                .padding(.bottom)
                                .frame(width: 343, height: 557)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 343, height: 557)
                                    .foregroundColor(.white)
                                VStack{
                                    Text("Ohiya selain pembalut,\nkalian juga bisa pake\ntampon & menstrual cup loh!").foregroundColor(.black).multilineTextAlignment(.leading)
                                    
                                    Image("tampon")
                                        .scaleEffect(0.9)
                                    
                                    Text("TAMPON").font(.system(size: 20, weight: .bold)).foregroundColor(.black)
                                    
                                    Image("menstrualCup")
                                        .scaleEffect(0.9)
                                    
                                    Text("MENSTRUAL CUP").font(.system(size: 20, weight: .bold)).foregroundColor(.black)
                                }
                                .padding(.top, 70)
                                .padding(.bottom, 120)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .frame(width: 343, height: 557)
                                    .foregroundColor(.white)
                                VStack{
                                    Image("tableMens")
                                        .resizable()
//                                        .scaleEffect(0.95)
//                                        .padding(.bottom, 90)
                                        .padding(.top,10)
                                    
//                                    Text("Menstruasi berhubungan dengan sistem reproduksi wanita, sedangkan makanan & minuman berhubungan dengan sistem pencernaan.\n\n Jadi, mengonsumsi minuman dingin tidak berpengaruh pada keterlambatan menstruasi seseorang.\n\nMenstruasi yang datang terlambat disebabkan oleh tiga hal, yaitu adanya masalah pada dinding rahim, masalah hormonal dari indung telur, dan masalah psikologis seperti stres.")
//                                        .font(.system(size: 17))
//    //                                    .padding(.top,10)
//                                        .padding(.horizontal, 20)
                                }
                                .padding(.leading,20)
                                .padding(.trailing,20)
                                .padding(.bottom, 20)
                                .frame(width: 343, height: 557)
                            }
                        }
                        //                .padding(.top,40)
                        .padding(.bottom, 70)
                        .padding(.leading,25)
                        .padding(.trailing,25)}
                    Text("Swipe untuk Lanjut Membaca!")
                        .padding(.bottom, 15)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .foregroundColor(.black)
        .buttonStyle(PlainButtonStyle())
    }
}

struct PembalutEdu2_Previews: PreviewProvider {
    static var previews: some View {
        PembalutEdu2()
    }
}
