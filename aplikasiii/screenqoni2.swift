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
        NavigationStack{
            NavigationLink{
                screenqoni3()
            }label: {
                ZStack{
                    Image("diniKram")
                        .resizable()
                        .ignoresSafeArea()
                    VStack {
                        HStack{
                            NavigationLink{
                                edukasi_2()
                            }label: {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 34)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(.black)
                            }
                            Image("imageSound")
                                .resizable()
                                .frame(width: 43, height: 43)
                                .padding(.horizontal, 15)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        Spacer()
                    }
                        
                    VStack{
                        Spacer()
                        ZStack{
                            Image("bubblekiri")
                                .resizable()
                                .frame(width: 343, height: 87)
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 343, height: 80)
                                .foregroundColor(.white)
                            Text("Aduh, perut aku kram banget karena menstruasi. Sakit banget!")
                                .font(.system(size: 17))
                                .padding(.top,5)
                                .padding(.horizontal, 25)
                        }
                        .frame(width: 343, height: 141)
                        .padding(.bottom, 40)
                        
                    }
                }
                .foregroundColor(.black)
            }
            .buttonStyle(PlainButtonStyle())
            
        }
        
    }
    
    struct screenqoni2_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni2()
        }
    }
}
