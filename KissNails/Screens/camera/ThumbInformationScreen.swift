//
//  ThumbInformationScreen.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct ThumbInformationScreen: View {
    @ObservedObject var viewModel = NailCameraViewModel()
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    VStack {
                        
                        //Image("ThumbGuidelineWarning")
                        Image("ThumbDontText")
                        Image("DontThumbImageCamera")
                        Image("ThumbGuidelineWarningText")
                    }
                    
                    VStack {
                        Image("ThumbDoText")
                        Image("DoThumbImageCamera")
                        Image("ThumbGuidelineGreenText")
                    }
                }
                
                Spacer().frame(width: 300, height: 20)
                
                Spacer()
                    
                
            }.ignoresSafeArea()
            
            VStack {
                Spacer().frame(width: 300, height: 60)
                
                Text("How to capture thumb")
                    .foregroundStyle(.myKiss)
                    .font(.system(size: 22, weight: .semibold))
                
                Spacer()
                
                VStack {
                    Spacer()
                    OrangeButtonView(text: "Got It").padding(.bottom).onTapGesture {
                        viewModel.isShowingThumbInformationScreen = false
                    }
                    Spacer().frame(width: 300, height: 50)
                }
                
                Spacer().frame(width: 300, height: 50)
            }
            
           
        }
    }
}
