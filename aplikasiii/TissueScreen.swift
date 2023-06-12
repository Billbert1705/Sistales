//
//  TissueScreen.swift
//  aplikasiii
//
//  Created by Cut Putroe Salsabila on 09/06/23.
//

import SwiftUI

struct TissueScreen: View {
    @State var isAudioEnabled = false
    
    var body: some View {
        NavigationStack{
            NavigationLink{
                sectionBillaScreen()
            }label:{
            ZStack{
                Image("bgedu")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        NavigationLink{
                            sectionBillaScreen()
                        }label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 34)
                                .padding(.top)
                                .padding(.horizontal, 20)
                                .foregroundColor(.black)
                        }
                        Spacer()
//                        AudioToggleButton(isAudioEnabled: $isAudioEnabled)
//                            .foregroundColor(.black)
//                            .padding(.trailing, 25)
                        
//                        Image("imageSound")
//                            .resizable()
//                            .frame(width: 43, height: 43)
//                            .padding(.horizontal, 15)
//                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    }
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 343, height: 557)
                            .foregroundColor(.white)
                        VStack{
                            Image("tissueHold")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 174, height: 167)
                            //                            .padding(.top,5)
                            
                            Text("Tissue itu gaboleh dipake pas menstruasi loh!\n \nMenurut dr. Daniel Adegbulu, tissue berisiko nyebabin infeksi parah.\n \nKarena tissue mengandung beberapa zat beracun yang ga cocok buat vagina kita.\n \nSelain itu, beberapa merek tissue terbuat dari daur ulang kertas bekas. Hal ini ngebuat risiko kesehatan yang serius bagi kita yang mungkin menggunakannya sebagai pengganti pembalut.")
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
                    Text("Tap untuk Kembali!")
                    .padding(.bottom, 15)}
            }
        }
        .navigationBarBackButtonHidden(true)
        .foregroundColor(.black)
        .buttonStyle(PlainButtonStyle())
        }
    }
    struct TissueScreen_Previews: PreviewProvider {
        static var previews: some View {
            TissueScreen()
        }
    }
}
