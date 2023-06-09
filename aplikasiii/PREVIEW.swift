//
//  preview.swift
//  aplikasiii
//
//  Created by Billbert Pohandy on 04/06/23.
//

import SwiftUI

//struct Screen70: View {
//    @Binding var isNextScreenActive: Bool
//    @State private var isPopUpVisible = false
//    @State private var showAlert = false
//
//    var body: some View {
//        VStack {
//            HStack {
//                Spacer()
//                Image("imageSound")
//                    .resizable()
//                    .frame(width: 43, height: 43)
//            }
//            Spacer()
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(
//            Image("scene71")
//                .resizable()
//                .frame(width: 390, height: 856.5)
//                .onTapGesture {
//                    isPopUpVisible = true
//                }
//                .overlay(
//                    VStack {
//                        if isPopUpVisible {
//                            ZStack {
//                                Color.black.opacity(0.6)
//                                    .edgesIgnoringSafeArea(.all)
//                                VStack(spacing: 20) {
//                                    Button(action: {
//                                        showAlert = true
//                                    }) {
//                                        Text("MEMBIARKAN DINI BEGITU SAJA")
//                                    }
//                                    .modifier(EqualSizeButtonStyle())
//
//                                    Button(action: {
//                                        isPopUpVisible = false
//                                        isNextScreenActive = true
//                                    }) {
//                                        Text("MENCOBA MENENANGKAN & MENGAJAK DINI KE TOILET")
//                                    }
//                                    .modifier(EqualSizeButtonStyle())
//                                }
//                              
//                                
//                            }
//                            .transition(.opacity)
//                        }
//                    }
//                )
//        )
//        .navigationBarHidden(true)
//        .alert(isPresented: $showAlert) {
//            Alert(
//                title: Text("Yakin?"),
//                message: Text("Masa Dini dibiarin gitu aja..."),
//                dismissButton: .default(Text("Kembali"))
//            )
//        }
//    }
//}
//
//
//struct Screen80: View {
//    @Binding var isNextScreenActive: Bool
//    @State private var isScreen9Active = false
//    var body: some View {
//        VStack {
//            HStack {
//                Spacer()
//                Image("imageSound")
//                    .resizable()
//                    .frame(width: 43, height: 43)
//            }
//            Spacer()
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Image("scene9")
//            .resizable()
//            .frame(width: 390, height: 856.5))
//        //        .onTapGesture {
//        //            isScreen10Active = true
//        //        }
//        //        .background(
//        //            NavigationLink(
//        //                destination: Screen8(isNextScreenActive: $isNextScreenActive),
//        //                isActive: $isScreen10Active
//        //            ) {
//        //                EmptyView()
//        //            }
//        //                .hidden()
//        //        )
//        //        .navigationBarHidden(true)
//    }
//}
//struct preview_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//
//
