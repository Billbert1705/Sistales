//
//  aplikasiiiApp.swift
//  aplikasiii
//
//  Created by Billbert Pohandy on 04/06/23.
//

import SwiftUI

@main
struct aplikasiiiApp: App {
    let backgroundMusicPlayer = BackgroundMusicPlayer.shared
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .onAppear {
                    backgroundMusicPlayer.playBackgroundMusic()
                }
                .onDisappear {
                    backgroundMusicPlayer.stopBackgroundMusic()
                }
        }
    }
}
