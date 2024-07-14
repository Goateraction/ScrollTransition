//
//  ContentView.swift
//  ScrollTransition
//
//  Created by Goateraction on 7/14/24.
//  Copyright © 2024 Goateraction. All rights reserved.
//
//  Github, Instagram, X 
//  -> @Goateraction
//

// used in the Space Diary App 😄
// https://apps.apple.com/app/id6499088381

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            ScrollView(.horizontal) {
                HStack{
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.thinMaterial)
                            .frame(width: 300, height: 500)
                            .scrollTransition(.interactive.animation(.smooth).threshold(.visible(2))) { view, phase in
                                view
                                    .rotation3DEffect(.degrees(-12), axis: (x: 0, y: 1, z: 0), perspective: 0.8)
                                    .scaleEffect(scale(phase:phase), anchor: .leading)
                            }
                            .zIndex(-Double(index))
                    }
                }
            }
            .scrollClipDisabled()
        }
    }
    
    
    func scale(phase: ScrollTransitionPhase) -> CGFloat {
        switch phase {
        case .topLeading:
            1.1
        case .identity:
            1
        case .bottomTrailing:
            0.6
        }
    }
}

#Preview {
    ContentView()
}
