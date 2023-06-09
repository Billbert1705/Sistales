//
//  screenqoni3.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 08/06/23.
//

import SwiftUI

struct screenqoni3: View {
    var body: some View {
        NavigationStack{
            NavigationLink{
                NextScreen().navigationBarBackButtonHidden(true)
            } label: {
                ZStack{
                    Image("screen16")
                        .resizable()
                        .ignoresSafeArea()
                    VStack {
                        HStack{
                            NavigationLink{
                                screenqoni2()
                            }label: {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 34)
                                    .padding(.horizontal, 20)
                            }
                            .foregroundColor(.black)
                            Image("imageSound")
                                .resizable()
                                .frame(width: 43, height: 43)
                                .padding(.horizontal, 15)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        Spacer()
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            .navigationBarBackButtonHidden(true)
            .buttonStyle(PlainButtonStyle())
            
        }
    }
    struct screenqoni3_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni3()
        }
    }
}
