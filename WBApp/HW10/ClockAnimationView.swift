//
//  ClockAnimationView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 22.07.2024.
//

import SwiftUI

struct ClockAnimationView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        Text("⏳")
            .font(.system(size: 50))
            .rotationEffect(.degrees(rotation))
            .onAppear {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                    rotation = 360
                }
            }
    }
}

struct ClockAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ClockAnimationView()
    }
}

