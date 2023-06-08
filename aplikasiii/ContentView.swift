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
    @State private var isScreen5Active = false
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
        .onTapGesture {
            isScreen5Active = true
        }
        .background(
            NavigationLink(
                destination: Screen5(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen5Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen5: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen6Active = false
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
        .background(Image("scene5")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen6Active = true
        }
        .background(
            NavigationLink(
                destination: Screen6(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen6Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}
struct Screen6: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen7Active = false
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
        .background(Image("scene6")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen7Active = true
        }
        .background(
            NavigationLink(
                destination: Screen7(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen7Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}
struct Screen7: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen8Active = false
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
        .background(Image("scene7")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen8Active = true
        }
        .background(
            NavigationLink(
                destination: Screen8(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen8Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}
struct Screen8: View {
    @Binding var isNextScreenActive: Bool
    @State private var isPopUpVisible = false
    
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
        .background(
            Image("scene71")
                .resizable()
                .frame(width: 390, height: 856.5)
                .onTapGesture {
                    isPopUpVisible = true
                }
                .overlay(
                    VStack {
                        if isPopUpVisible {
                            ZStack {
                                Color.black.opacity(0.6)
                                    .edgesIgnoringSafeArea(.all)
                                VStack(spacing: 20) {
                                    Button(action: {
                                        isNextScreenActive = false // Set to false first to close the pop-up
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                            isNextScreenActive = true // Set to true to navigate to Screen 9
                                        }
                                    }) {
                                        Text("Go to Screen 9")
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    }
                                    Button(action: {
                                        // Handle action for Screen 10
                                    }) {
                                        Text("Go to Screen 10")
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.green)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            .transition(.opacity)
                        }
                    }
                )
        )
        .navigationBarHidden(true)
    }
}

struct Screen9: View {
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
        .background(Image("scene9")
            .resizable()
            .frame(width: 390, height: 856.5))
        //        .onTapGesture {
        //            isScreen10Active = true
        //        }
        //        .background(
        //            NavigationLink(
        //                destination: Screen8(isNextScreenActive: $isNextScreenActive),
        //                isActive: $isScreen10Active
        //            ) {
        //                EmptyView()
        //            }
        //                .hidden()
        //        )
        //        .navigationBarHidden(true)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




