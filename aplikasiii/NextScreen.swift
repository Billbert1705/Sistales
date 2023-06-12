//
//  NextScreen.swift
//  aplikasiii
//
//  Created by Intan Permatasari on 08/06/23.
//

import SwiftUI
import UIKit

struct NextScreen: View {
    @State private var isNextScreenActive = false
    @State var isAudioEnabled = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink{
                        screenqoni3()
                    }label:{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 34)
                            .padding(.horizontal, 15)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                        .foregroundColor(.black)
                        .padding(.trailing, 15)
                    
                }
                .padding(.top, 55)
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
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

//struct Screen17B: View {
//    @Binding var isNextScreenActive: Bool
//    @State private var isScreen17BActive = false
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
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Image("scene17B")
//            .resizable()
//            .frame(width: 390, height: 856.5))
//        .onTapGesture {
//            isScreen17BActive = true
//
//        }
//        .background(
//            NavigationLink(
//                destination: Screen18(isNextScreenActive: $isNextScreenActive).navigationBarBackButtonHidden(true),
//                isActive: $isScreen17BActive
//            ) {
//                EmptyView()
//            }
//                .hidden()
//        )
//        .navigationBarHidden(true)
//    }
//}
struct Screen17B: View {
    @State private var isAudioEnabled = false
    @Binding var isNextScreenActive: Bool
    @State private var isPopUpVisible = false
    @State private var showAlert = false
    
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    NavigationLink{
                        NextScreen()
                    }label:{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 34)
                        //                            .padding(.horizontal)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                        .foregroundColor(.black)
                    //                    Image("imageSound")
                    //                        .resizable()
                    //                        .frame(width: 43, height: 43)
                }
                Spacer()
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("scene17B")
                    .resizable()
                    .frame(width: 390, height: 856.5)
                    .onTapGesture {
                        isPopUpVisible = true
                    }
                    .overlay(
                        VStack {
                            if isPopUpVisible {
                                ZStack {
                                    //                                    Color.black.opacity(0.6)
                                    //                                        .edgesIgnoringSafeArea(.all)
                                    VStack(spacing: 20) {
                                        Button(action: {
                                            showAlert = true
                                        }) {
                                            Text("MENGAMBIL OBAT MAAG")
                                        }
                                        .modifier(EqualSizeButtonStyle())
                                        .frame(width: 343, height: 56)
                                        .shadow(radius: 0, x: 4, y: 4)
                                        NavigationLink(destination: Screen18(isNextScreenActive: $isNextScreenActive).navigationBarBackButtonHidden(true), label: {
                                            Text("MENGAMBIL MENSTRUAL HEAT PATCH")
                                                .modifier(EqualSizeButtonStyle())
                                                .frame(width: 343, height: 56)
                                                .shadow(radius: 0, x: 4, y: 4)
                                        })
                                        .navigationBarBackButtonHidden(true)
                                        
                                        //                                        Button(action: {
                                        //                                            isPopUpVisible = false
                                        //                                            isNextScreenActive = true
                                        //                                        }) {
                                        //
                                        //                                        }
                                        //                                        .modifier(EqualSizeButtonStyle())
                                    }
                                    
                                    
                                }
                                .transition(.opacity)
                            }
                        }
                    )
            )
            .navigationBarHidden(true)
            .alert(isPresented: $showAlert) { () -> Alert in
                performVibration()
                return Alert(title: Text("Yakin?"), message: Text("Dini lagi kram menstruasi loh, bukan lagi sakit maag..."), dismissButton: .default(Text("Kembali")))
            }
        }
        .navigationBarHidden(true)
    }
}



struct Screen18: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen18Active = false
    @State private var isAudioEnabled = false
    
    var body: some View {
        
        VStack {
            HStack {
                NavigationLink{
                    Screen17B(isNextScreenActive: $isNextScreenActive)
                    
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                    //                            .padding(.horizontal)
                        .foregroundColor(.black)
                }
                Spacer()
                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                    .foregroundColor(.black)
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
                destination: Screen19(isNextScreenActive: $isNextScreenActive).navigationBarBackButtonHidden(true),
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
    @State private var isAudioEnabled = false
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    Screen18(isNextScreenActive: $isNextScreenActive)                }label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                    .foregroundColor(.black)
            }
            Spacer()
            ScrollView(.horizontal){
                HStack(spacing:25){
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 343, height: 557)
                            .foregroundColor(.white)
                        VStack{
                            Image("edu1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 343, height: 557)
                            
                        }
                        //                        .padding(.leading,20)
                        //                        .padding(.trailing,20)
                        //                        .padding(.bottom, 100)
                        .frame(width: 343, height: 557)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 343, height: 557)
                            .foregroundColor(.white)
                        VStack{
                            Image("edu2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 343, height: 557)
                        }
                        //                        .padding(.leading,20)
                        //                        .padding(.trailing,20)
                        //                        .padding(.bottom, 100)
                        .frame(width: 343, height: 557)
                    }
                    //                .padding(.top,40)
                    //                    .padding(.bottom, 70)
                    //                    .padding(.leading,25)
                    //                    .padding(.trailing,25)
                    
                }
                
                Text("Tap untuk Kembali!")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 15)
                    .foregroundColor(.black)
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                    .frame(alignment: .top)
                
                
                
            }
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
//
//struct Screen19: View {
//    @State private var size = UIScreen.main.bounds.size
//    var body: some View {
//        NavigationLink{
//            screenqoni(buttonMuncul: true, tapCount : 1)
//        }label: {
//            ZStack{
//                Image("bgedu")
//                    .resizable()
//                    .ignoresSafeArea()
//                VStack{
//                    HStack{
//                        NavigationLink{
//                            screenqoni(buttonMuncul: true, tapCount : 1)
//                        }label: {
//                            Image(systemName: "chevron.left")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 34)
//                                .padding(.horizontal, 20)
//        //                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .foregroundColor(.black)
//                        }
//                        Image("imageSound")
//                            .resizable()
//                            .frame(width: 43, height: 43)
//                            .padding(.horizontal, 15)
//                            .frame(maxWidth: .infinity, alignment: .trailing)
//                    }
//                    Spacer()
//



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
        .background(Image("scene20fix")
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
        .background(Image("edu20")
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
    @State private var isScreen21Active = false
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
        .background(Image("edu21")
            .resizable()
            .frame(width: 390, height: 856.5))
        .onTapGesture {
            isScreen21Active = true
        }
        .background(
            NavigationLink(
                destination: Screen22(isNextScreenActive: $isNextScreenActive),
                isActive: $isScreen21Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen22: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen22Active = false
    var body: some View {
        VStack {
            HStack {
                Image("grouphome")
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene21")
            .resizable()
            .frame(width: 390, height: 856.5))
        NavigationLink(destination: StartPage()
        ) {
            EmptyView()
        }
        .hidden()
        
        .navigationBarHidden(true)
        .onAppear {
            performVibration()
        }
    }
    
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

struct PerformVibrationOnAppear: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onAppear {
                performVibration()
            }
    }
    
    private func performVibration() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}

func performVibration() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.error)
}

extension View {
    func performVibrationOnAppear() -> some View {
        modifier(PerformVibrationOnAppear())
    }
}
struct EqualSizeButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 314, height: 57)
        //            .padding()
            .background(Color(red: 253/255, green: 174/255, blue: 203/255))
            .foregroundColor(.black)
            .cornerRadius(10)
    }
}

struct NextScreen_Previews: PreviewProvider {
    static var previews: some View {
        NextScreen()
    }
}


