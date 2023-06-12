//
//  ContentView.swift
//  aplikasiii
//
//  Created by Billbert Pohandy on 04/06/23.
//

import SwiftUI
import AVKit
import  AVFoundation

//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//JANGAN DIOTAK ATIK
//struct AudioToggleButton: View {
//    @Binding var isAudioEnabled: Bool
//
//    var body: some View {
//        Button(action: {
//            isAudioEnabled.toggle()
//        }) {
//            Image(systemName: isAudioEnabled ? "speaker.slash.fill" : "speaker.wave.2.fill")
//                .resizable()
//                .frame(width: 43, height: 43)
//        }
//    }
//}
struct SplashScreen: View {
    @State private var isActive = false
    
    var body: some View {
        Image("imageSplash")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                StartPage()
                    .transition(.opacity)
            }
    }
}
struct StartPage: View {
    @State private var isNextScreenActive = false
    
    var body: some View {
        VStack {
            Button(action: {
                isNextScreenActive = true
            }) {
                Text("START")
                    .padding()
                    .background(Image("pink"))
                    .foregroundColor(.black)
                    .bold()
                    .cornerRadius(60)
                
            }
            .padding()
            .fullScreenCover(isPresented: $isNextScreenActive) {
                ContentViews()
                    .transition(.opacity)
            }
            .onAppear {
                playSound(sound: "play", type: "mp3")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("imageStart")
            .resizable()
            .frame(width: 390, height: 856.5))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
    
}
struct ContentViews: View {
    @State private var isNextScreenActive = false
    @State private var isAudioEnabled = true
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink{
                        StartPage()
                    }label:{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 34)
                            .padding(.horizontal, 10)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    //                    AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                    //                        .foregroundColor(.black)
                }
                Spacer()
                Spacer()
                //                Text("Tap untuk lanjut!")
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarBackButtonHidden(true)
            .background(
                ZStack {
                    Image("scene3")
                        .resizable()
                        .frame(width: 390, height: 856.5)
                    VStack {
                        //                        HStack {
                        //                            Image(systemName: "chevron.left")
                        //                                .resizable()
                        //                                .scaledToFit()
                        //                                .frame(height: 34)
                        //                                .padding(.horizontal, 10)
                        //                                .foregroundColor(.black)
                        Spacer()
                        //                            AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                        //                                .foregroundColor(.black)
                        //                        }
                        //                        .padding(.top, 40)
                        Spacer()
                        //                        Text("Tap untuk lanjut!")
                        //                            .padding(.bottom, 40)
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
                }
                    .navigationBarBackButtonHidden(true)
            )
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
            .navigationBarBackButtonHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
    }
}

struct Screen2beta: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen3Active = false
    @State private var isAudioEnabled = true
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    StartPage()
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 25)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                //<<<<<<< HEAD
                //                //                Image("imageSound")
                //                //                    .resizable()
                //                //                    .frame(width: 43, height: 43)
                //=======
                //                    .foregroundColor(.black)
                ////                Image("imageSound")
                ////                    .resizable()
                ////                    .frame(width: 43, height: 43)
                //>>>>>>> 4d0bc7404ee8f28f2e4b00ff5199e8a668849e27
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


struct Screen2: View {
    @Binding var isNextScreenActive: Bool
    @State private var isScreen3Active = false
    @State private var isAudioEnabled = true
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    ContentViews()
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                
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
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isScreen4Active = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    Screen2(isNextScreenActive: $isNextScreenActive)
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                //                Image("imageSound")
                //                    .resizable()
                //                    .frame(width: 43, height: 43)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("scene322")
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
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isScreen5Active = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    Screen3(isNextScreenActive: $isNextScreenActive)
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                //                Image("imageSound")
                //                    .resizable()
                //                    .frame(width: 43, height: 43)
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
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isScreen51Active = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    Screen4(isNextScreenActive: $isNextScreenActive)
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                //                Image("imageSound")
                //                    .resizable()
                //                    .frame(width: 43, height: 43)
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
            isScreen51Active = true
        }
        .background(
            NavigationLink(
                destination: Screen51(isNextScreenActive: $isNextScreenActive, videoFileName: "edu"),
                isActive: $isScreen51Active
            ) {
                EmptyView()
            }
                .hidden()
        )
        .navigationBarHidden(true)
    }
}

struct Screen51: View {
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isScreen6Active = false
    @State private var isVideoFinished = false
    @State private var player: AVPlayer?
    
    let videoFileName: String?
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: Screen5(isNextScreenActive: $isNextScreenActive)) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
            }
            Spacer()
            Spacer()
            VideoPlayer(player: player)
                .onAppear {
                    playVideo(fileName: videoFileName)
                }
                .onDisappear {
                    stopVideo()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("scene19")
                .resizable()
                .frame(width: 390, height: 856.5)
        )
        .onTapGesture {
            if isVideoFinished {
                isScreen6Active = true
            }
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
    
    private func playVideo(fileName: String?) {
        guard let fileName = fileName, let videoURL = Bundle.main.url(forResource: "eedu", withExtension: "mov") else {
            return
        }
        player = AVPlayer(url: videoURL)
        player?.play()
        
        // Observe when the video playback reaches its end
        player?.addBoundaryTimeObserver(forTimes: [NSValue(time: CMTime(seconds: 10, preferredTimescale: 1))], queue: .main) { [self] in
            isVideoFinished = true
        }
    }
    
    private func stopVideo() {
        player?.pause()
        player = nil
    }
}







struct Screen6: View {
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isScreen7Active = false
    var body: some View {
        VStack {
            HStack {
                NavigationLink{
                    Screen51(isNextScreenActive: $isNextScreenActive, videoFileName: "edu")
                }label:{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 34)
                        .padding(.horizontal, 10)
                        .foregroundColor(.black)
                }
                Spacer()
                //                AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                //                    .foregroundColor(.black)
                //                Image("imageSound")
                //                    .resizable()
                //                    .frame(width: 43, height: 43)
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
                destination: Screen7(isNextScreenActive: $isNextScreenActive).navigationBarBackButtonHidden(true),
                isActive: $isScreen7Active
            ) {
                EmptyView()
                
            }
                .hidden()
            
        )
        .navigationBarHidden(true)
        
    }
}

//struct EqualSizeButtonStyle: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 314, height: 57)
////            .padding()
//            .background(Color(red: 253/255, green: 174/255, blue: 203/255))
//            .foregroundColor(.black)
//            .cornerRadius(10)
//    }
//}


//            struct EqualSizeButtonStyle: ViewModifier {
//                func body(content: Content) -> some View {
//                    content
//                        .frame(width: 314, height: 57)
//                    //            .padding()
//                        .background(Color(red: 253/255, green: 174/255, blue: 203/255))
//                        .foregroundColor(.black)
//                        .cornerRadius(10)
//                }
//            }

struct Screen7: View {
    @State private var isAudioEnabled = true
    @Binding var isNextScreenActive: Bool
    @State private var isPopUpVisible = false
    @State private var showAlert = false
    
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    NavigationLink{
                        Screen6(isNextScreenActive: $isNextScreenActive)
                    }label:{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 34)
                            .padding(.horizontal, 10)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    //                    AudioToggleButton(isAudioEnabled: $isAudioEnabled)
                    //                        .foregroundColor(.black)
                    //<<<<<<< HEAD
                    //                    //                    Image("imageSound")
                    //                    //                        .resizable()
                    //                    //                        .frame(width: 43, height: 43)
                    //=======
                    //                        .foregroundColor(.black)
                    ////                    Image("imageSound")
                    ////                        .resizable()
                    ////                        .frame(width: 43, height: 43)
                    //>>>>>>> 4d0bc7404ee8f28f2e4b00ff5199e8a668849e27
                }
                
                Spacer()
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
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
                                    //                                    Color.black.opacity(0.6)
                                    //                                        .edgesIgnoringSafeArea(.all)
                                    VStack(spacing: 20) {
                                        Button(action: {
                                            showAlert = true
                                        }) {
                                            Text("MEMBIARKAN DINI BEGITU SAJA")
                                        }
                                        .modifier(EqualSizeButtonStyle())
                                        .frame(width: 343, height: 56)
                                        .shadow(radius: 0, x: 4, y: 4)
                                        NavigationLink(destination: ScreenBilla(isNextScreenActive: $isNextScreenActive).navigationBarBackButtonHidden(true), label: {
                                            Text("MENCOBA MENENANGKAN & MENGAJAK DINI KE TOILET")
                                                .modifier(EqualSizeButtonStyle())
                                                .frame(width: 343, height: 56)
                                                .shadow(radius: 0, x: 4, y: 4)
                                            //<<<<<<< HEAD
                                            //
                                            //
                                            //=======
                                            //>>>>>>> 4d0bc7404ee8f28f2e4b00ff5199e8a668849e27
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
                return Alert(title: Text("Yakin?"), message: Text("Masa Dini dibiarin gitu aja..."), dismissButton: .default(Text("Kembali")))
            }
        }
        .navigationBarBackButtonHidden(true)
        //<<<<<<< HEAD
        //
        //    }
        //=======
        //        .navigationBarBackButtonHidden(true)
        //            }
        //>>>>>>> 4d0bc7404ee8f28f2e4b00ff5199e8a668849e27
    }
    
    
    
    
    
    func performVibration() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    
}

//struct Screen8: View {
//    @State private var isAudioEnabled = true
//    @Binding var isNextScreenActive: Bool
//    @State private var isScreen9Active = false
//    var body: some View {
//        VStack {
//            HStack {
//                NavigationLink{
//                    Screen7(isNextScreenActive: $isNextScreenActive)
//                }label:{
//                    Image(systemName: "chevron.left")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 34)
//                        .padding(.horizontal, 10)
//                        .foregroundColor(.black)
//                }
//                Spacer()
////                    AudioToggleButton(isAudioEnabled: $isAudioEnabled)
////                        .foregroundColor(.black)
//                //                Image("imageSound")
//                //                    .resizable()
//                //                    .frame(width: 43, height: 43)
//            }
//            Spacer()
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Image("scene9")
//            .resizable()
//            .frame(width: 390, height: 856.5))    }
//}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

