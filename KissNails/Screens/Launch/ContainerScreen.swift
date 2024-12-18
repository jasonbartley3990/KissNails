//
//  ContainerScreen.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct ContainerScreen: View {
    
    @EnvironmentObject var environment: EnvironmentViewModel
    
    var body: some View {
        if environment.isShowingLaunchScreen {
            LaunchScreen()
        } else {
            TabBarContainerView()
        }
        
    }
}
