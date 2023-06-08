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
                NextScreen()
            } label: {
                ZStack{
                    Image("screen16")
                        .resizable()
                        .ignoresSafeArea()
                    VStack {
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 34)
                                .padding(.horizontal, 20)
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
            .buttonStyle(PlainButtonStyle())
        }
    }
    struct screenqoni3_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni3()
        }
    }
}
