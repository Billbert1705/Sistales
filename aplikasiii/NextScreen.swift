//
//  NextScreen.swift
//  aplikasiii
//
//  Created by Intan Permatasari on 08/06/23.
//

import SwiftUI

struct NextScreen: View {
    @State private var isNextScreenActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Image("imageSound")
                        .resizable()
                        .frame(width: 43, height: 43)
                        .padding(.horizontal, 15)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Spacer()
                Spacer()
            }
            .background(
                Image("scene17A")
                
            )
            .onTapGesture {
                isNextScreenActive = true
            }
            .background(
                NavigationLink(
                    destination: Screen17B(isNextScreenActive: $isNextScreenActive),
                    isActive: $isNextScreenActive
                ) {
                    EmptyView()
                }
                    .hidden()
            )
            .navigationBarHidden(true)
        }
    }
}

struct Screen17B: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen17BActive = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene17B")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen17BActive = true
        }
        .background(
            NavigationLink(
                destination: Screen18(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen17BActive
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}


struct Screen18: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen18Active = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene18")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen18Active = true
        }
        .background(
            NavigationLink(
                destination: Screen19(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen18Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen19: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen19Active = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene19")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen19Active = true
        }
        .background(
            NavigationLink(
                destination: Screen20(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen19Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen20: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen20Active = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene20")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen20Active = true
        }
        .background(
            NavigationLink(
                destination: Screen201(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen20Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}
struct Screen201: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen201Active = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene201")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen201Active = true
        }
        .background(
            NavigationLink(
                destination: Screen21(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen201Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen21: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen10Active = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("imageSound")
                    .resizable()
                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene21")
            .resizable()
            .frame(width: 390, height: 856.5))
        //        .onTapGesture {
        //            isScreen10Active = true
        //        }
        //        .background(
        //            NavigationLink(
        //                destination: Screen22(isNextScreenActive: $isNextScreenActive),
        //                isActive: $isScreen21Active
        //            ) {
        //                EmptyView()
        //            }
        //                .hidden()
        //        )
        //        .navigationBarHidden(true)
    }
}

struct NextScreen_Previews: PreviewProvider {
    static var previews: some View {
        NextScreen()
    }
}
