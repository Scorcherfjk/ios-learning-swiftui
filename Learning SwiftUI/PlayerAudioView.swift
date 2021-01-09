//
//  PlayerAudioView.swift
//  Learning SwiftUI
//
//  Created by Francisco De Freitas on 9/01/21.
//

import SwiftUI

struct PlayerAudioView: View {
    
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            isPlaying = !isPlaying
        }) {
            Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(isPlaying ? Color.gray : Color.blue)
                .cornerRadius(100)
        }
    }
}

struct PlayerAudioView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerAudioView()
    }
}
