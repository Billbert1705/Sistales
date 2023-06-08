//
//  screenqoni3.swift
//  aplikasiii
//
//  Created by Qonitah Faridah on 08/06/23.
//

import SwiftUI

struct screenqoni3: View {
    var body: some View {
        ZStack{
            Image("screen16")
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
        }
    }
    
    struct screenqoni3_Previews: PreviewProvider {
        static var previews: some View {
            screenqoni3()
        }
    }
}
