//
//  HandInformationScreen.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct HandInformationScreen: View {
    @ObservedObject var viewModel = NailCameraViewModel()
    
    @EnvironmentObject var environment: EnvironmentViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()
                
                Image("NailCameraGuidlelineTutorial").ignoresSafeArea(.all)
                
                VStack {
                    Spacer().frame(width: 300, height: 80)
                    
                    Text("How to capture four fingers")
                        .foregroundStyle(.myKiss)
                        .font(.system(size: 22, weight: .semibold))
                    Text("Place the card about 6 inches away\n from the edge of the table.")
                        .frame(width: 250)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                    
                    OrangeButtonView(text: "Got It").onTapGesture {
                        viewModel.isShowingHandInformationScreen = false
                    }
                    
                    Spacer().frame(width: 300, height: 110)
                }
            }
        }
    }
}





//struct HandInformationScreen: View {
//
//    @ObservedObject var viewModel = NailCameraViewModel()
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color.white.ignoresSafeArea()
//
//                VStack {
//                    Spacer().frame(width: 300, height: 90)
//
//                    Text("Scan Four Fingers")
//                        .font(.system(size: 30, weight: .semibold))
//                        .padding(.bottom, 5)
//
//                    Text("Hover your camera above your nails and card")
//                        .font(.system(size: 16, weight: .medium))
//                        .foregroundStyle(.myDarkGray).padding(.bottom, 50)
//
//                    Image("MyEditCreditCard")
//
//                    Text("Don't worry we wont steal your card info. This is just for scale reference only").multilineTextAlignment(.center)
//                        .font(.system(size: 14, weight: .medium))
//                        .foregroundStyle(.myOrange)
//                        .padding()
//
//                    Spacer()
//
//                    Image("MyEditRightHandImage")
//
//
//                }.ignoresSafeArea()
//
//                VStack {
//                    Spacer()
//
//                    OrangeButtonView(text: "Got It").onTapGesture {
//                        viewModel.isShowingHandInformationScreen = false
//                    }
//
//                    Spacer().frame(width: 300, height: 100)
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    HandInformationScreen()
//}
