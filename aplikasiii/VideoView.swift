//
//  VideoView.swift
//  aplikasiii
//
//  Created by Intan Permatasari on 11/06/23.
//

import SwiftUI
import AVKit

//struct VideoView: View {
//    var fileName: String?
//
//    var body: some View {
//        VStack {
//            Text("Apasih menstruasi itu?")
//                .font(.system(size: 32, weight: .bold))
//                .foregroundColor(Color("pink"))
//                .padding()
//
//            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: fileName ?? "edu", withExtension: "mov")!))
////                .frame(height: UIScreen.main.bounds.height * 65 / 100)
//
//        }
//        .padding()
//    }
//}
//


struct VideoView: View {
    var fileName: String?
    
    var body: some View {
        VStack {
            //            Text("Apasih menstruasi itu?")
            //                .font(.system(size: 32, weight: .bold))
            //                .multilineTextAlignment(.center)
            //                .foregroundColor(Color("black"))
            //                .padding()
            
            if let videoURL = Bundle.main.url(forResource: fileName ?? "eedu", withExtension: "mov") {
                let player = AVPlayer(url: videoURL)
                VideoPlayer(player: player)
//                    .rotationEffect(.degrees(90))
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all) // Ignore safe area to fill the entire screen
                    .aspectRatio(contentMode: .fill)
                //                    .frame(height: UIScreen.main.bounds.height * 0.8)
                //                    .cornerRadius(24)
            } else {
                Text("Video file not found")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}



struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(fileName: "eedu")
    }
}
