//
//  ContentView.swift
//  aplikasiii
//
//  Created by Billbert Pohandy on 04/06/23.
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var isNextScreenActive = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Spacer()
//                    Image("imageSound")
//                        .resizable()
//                        .frame(width: 43, height: 43)
//                }
//                Spacer()
//                GroupBox {
//                    Text("EPISODE 1 - TEMANKU BARU SAJA MENSTRUASI!")
//                }
//                Spacer()
//                Text("Tap untuk lanjut!")
//            }
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Image("imageBackground"))
//            .onTapGesture {
//                isNextScreenActive = true
//            }
//            .background(
//                NavigationLink(
//                    destination: Screen2(),
//                    isActive: $isNextScreenActive
//                ) {
//                    EmptyView()
//                }
//            )
//            .navigationBarHidden(true)
//        }
//    }
//}
//
//struct Screen2: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
//            Spacer()
//            Spacer()
//            Spacer()
//            Spacer()
//            GroupBox {
//                Text("Di SMP Harapan Bangsa, kamu dan sahabatmu, Dini, sedang berbincang saat waktu istirahat.")
//                    .multilineTextAlignment(.center)
//            }
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Image("scene31"))
//        .navigationBarBackButtonHidden(true)
//        .navigationBarItems(leading: EmptyView())
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI

struct ContentView: View {
    @State private var isNextScreenActive = false

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Image("imageSound")
                        .resizable()
                        .frame(width: 43, height: 43)
                }
                Spacer()
                Spacer()
                Text("Tap untuk lanjut!")
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("scene3")
                    .resizable()
                    .frame(width: 390, height: 856.5)
            )
            .onTapGesture {
                isNextScreenActive = true
            }
            .background(
                NavigationLink(
                    destination: Screen2(isNextScreenActive: $isNextScreenActive),
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

struct Screen2: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen3Active = false

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
        .background(Image("scene31")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen3Active = true
        }
        .background(
            NavigationLink(
                destination: Screen3(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen3Active
            ) {
                EmptyView()
            }
            .hidden()
        )
        .navigationBarHidden(true)
    }
}


struct Screen3: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen4Active = false
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
        .background(Image("scene32")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen4Active = true
        }
        .background(
            NavigationLink(
                destination: Screen4(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen4Active
            ) {
                EmptyView()
            }
            .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen4: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen4Active = false
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
        .background(Image("scene4")
            .resizable()
            .frame(width: 390, height: 856.5))
//        .onTapGesture {
//            isScreen4Active = true
//        }
//        .background(
//            NavigationLink(
//                destination: Screen5(isNextScreenActive: $isNextScreenActive),
//                isActive: $isScreen5Active
//            ) {
//                EmptyView()
//            }
//            .hidden()
//        )
//        .navigationBarHidden(true)
//    }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


