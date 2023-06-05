//
//  preview.swift
//  aplikasiii
//
//  Created by Billbert Pohandy on 04/06/23.
//

import SwiftUI

struct preview: View {
    @State private var isNextScreenActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Image("sound2")
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                GroupBox {
                    Text("Di SMP Harapan Bangsa, kamu dan sahabatmu, Dini, sedang berbincang saat waktu istirahat.").multilineTextAlignment(.center)
                }
                Spacer()
                            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("colorBackground"))
            .onTapGesture {
                isNextScreenActive = true
            }
            .fullScreenCover(isPresented: $isNextScreenActive) {
                            ContentView()
                    
            }
        }
    }
}


struct preview_Previews:
        PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
