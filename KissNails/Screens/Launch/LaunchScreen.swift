//
//  LaunchScreen.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct LaunchScreen: View {
    @EnvironmentObject var environment: EnvironmentViewModel
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Color(.myKiss).ignoresSafeArea(.all)
                .overlay(
                    GeometryReader { proxy in
                        Color.clear.preference(key: SizePreferenceKey.self, value: proxy.size)
                    }
                )
                .onPreferenceChange(SizePreferenceKey.self) { value in
                    SharedScreenManager.shared.height = value.height
                    SharedScreenManager.shared.width = value.width
                }
            VStack {
                Image("KISS_logo")
                
               //Image("LaunchScreenText")
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear(perform: {
                withAnimation(.easeIn(duration: 2.3)) {
                    self.size = 1.0
                    self.opacity = 1.0
                }
            })
        }.onAppear(perform: {
            self.environment.checkIfSignedIn()
            SharedCoreMLModel.shared.setUpModels()
            //SharedImageManager.shared.getHandPhotos()
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0, execute: {
                environment.isShowingLaunchScreen = false
            })
        })
    }
}
