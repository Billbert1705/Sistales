//
//  PlaySound.swift
//  aplikasiii
//
//  Created by Intan Permatasari on 11/06/23.
//

import SwiftUI
import AVFoundation
//
//var audioPlayer: AVAudioPlayer?
//
//func playSound(sound: String, type: String) {
//    if let path = Bundle.main.path(forResource: sound, ofType: type) {
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
//            audioPlayer?.play()
//        } catch {
//            print("error")
//        }
//    }
//}

import AVFoundation
//
//class BackgroundMusicPlayer {
//    static let shared = BackgroundMusicPlayer()
//
//    private var audioPlayer: AVAudioPlayer?
//
//    private init() {
//        setupAudioPlayer()
//    }
//
//    private func setupAudioPlayer() {
//        if let path = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3") {
//            let url = URL(fileURLWithPath: path)
//
//            do {
//                audioPlayer = try AVAudioPlayer(contentsOf: url)
//                audioPlayer?.numberOfLoops = -1 // Set the number of loops to -1 for infinite looping
//                audioPlayer?.prepareToPlay()
//            } catch {
//                print("Failed to initialize the audio player: \(error)")
//            }
//        }
//    }
//
//    func playBackgroundMusic() {
//        audioPlayer?.play()
//    }
//
//    func stopBackgroundMusic() {
//        audioPlayer?.stop()
//    }
//}

class BackgroundMusicPlayer {
    static let shared = BackgroundMusicPlayer()

    private var audioPlayer: AVAudioPlayer?

    public init() {
        setupAudioPlayer()
    }

    private func setupAudioPlayer() {
        if let path = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1 // Set the number of loops to -1 for infinite looping
                audioPlayer?.prepareToPlay()
            } catch {
                print("Failed to initialize the audio player: \(error)")
            }
        }
    }
    public func playBackgroundMusic() {
           audioPlayer?.play()
       }

       public func stopBackgroundMusic() {
           audioPlayer?.stop()
       }
   }

//    func playBackgroundMusic() {
//        audioPlayer?.play()
//    }
//
//    func stopBackgroundMusic() {
//        audioPlayer?.stop()
//        audioPlayer?.currentTime = 0
//    }
//}

