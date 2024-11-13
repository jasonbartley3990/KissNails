//
//  TabBarContainerView.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct TabBarContainerView: View {
    @EnvironmentObject var environment: EnvironmentViewModel
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        ZStack {
            NailCameraContainer()
        
            if environment.goToOnboardingScreen {
                //OnboardingScreenOne()
            }
            
            if environment.isLogin {
                LoginScreen().opacity(environment.isSignedIn ? 0 : 1)
            } else {
                CreateAccountScreen().opacity(environment.isSignedIn ? 0: 1)
            }
            
            NoConnectionView().opacity(networkManager.isConnected ? 0 : 1)
            
        }
    }
}
