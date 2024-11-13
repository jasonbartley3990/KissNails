//
//  CameraGuideline.swift
//  KissNails
//
//  Created by Jason bartley on 10/17/24.
//

import Foundation
import SwiftUI

struct CameraGuidelineScreen: View {
    @ObservedObject var viewModel: NailCameraViewModel
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black.opacity(0.85).ignoresSafeArea(.all)
                
                VStack {
                    Spacer().frame(width: 200, height: 55)
                    
                    HStack {
                        BackButton().padding().hidden()
                        
                        Spacer()
                        
                        VStack {
                            Text("   ")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.myDarkGray)
                            
                            HStack {
                                Text(" ").frame(width: 40, height: 4)
                                    .cornerRadius(5)
                                
                                Text(" ").frame(width: 40, height: 4)
                                    .cornerRadius(5)
                                
                                Text(" ").frame(width: 40, height: 4)
                                    .cornerRadius(5)
                                
                                Text(" ").frame(width: 40, height: 4)
                                    .cornerRadius(5)
                            }
                        }.hidden()
                        
                        Spacer()
                        
                        XMarkButton().padding().onTapGesture {
                            self.viewModel.isShowingCameraGuideline = false
                        }
                        
                    }
                    ZStack {
                        Image("DashedLineCamera").hidden()
                        Text("Position the card in the frame").foregroundStyle(.white).hidden()
                    }
                    ZStack {
                        Image("ThickWhiteCardOutline")
                            .scaleEffect(CGSize(width: 0.9, height: 0.9), anchor: .center)
                        Text("Position the card\nin the frame")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                    }
                    
                    ZStack {
                        Image("DashedLineCamera").hidden()
                        Text("Keep fingers apart to avoid nail overlap").foregroundStyle(.white).hidden()
                    }
                    
                    switch viewModel.currentNailSelected {
                    case .rightHand:
                        Image("RightHandCaptureImage")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geo.size.width * 3)
                            .offset(y: 5)
                            .scaleEffect(CGSize(width: 1.2, height: 1.2), anchor: .center)
                    case .rightThumb:
                        Image("ThumbCaptureImage")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geo.size.width * 3)
                            .offset(y: 5)
                            .scaleEffect(CGSize(width: 1, height: 1), anchor: .center)
                    case .leftHand:
                        Image("LeftHandCaptureImage")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geo.size.width * 3)
                            .offset(y: 5)
                            .scaleEffect(CGSize(width: 1.2, height: 1.2), anchor: .center)
                    case .leftThumb:
                        Image("ThumbCaptureImage")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: geo.size.width * 3)
                            .offset(y: 5)
                            .scaleEffect(CGSize(width: 1, height: 1), anchor: .center)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        Color.white
                            .frame(width: geo.size.width, height: 170)
                            .hidden()
                        
                        HStack {
                            
                            VStack {
                                ZStack {
                                    
                                    Image("CaptureCameraIcon").hidden()
                                    
//                                    OrangeButtonView(text: "Start Measurement").onTapGesture {
//                                        self.viewModel.isShowingCameraGuideline = false
//                                    }
                                    
                                    switch viewModel.currentNailSelected {
                                    case .rightHand:
                                        VStack {
                                            Text("Capture your right fingers")
                                                .foregroundStyle(.myKiss)
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Keep your fingers apart to avoid nail overlap")
                                                .foregroundStyle(.white)
                                        }
                                    case .rightThumb:
                                        VStack {
                                            Text("Capture your right thumb")
                                                .foregroundStyle(.myKiss)
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Keep your thumb straight and flat on the table")
                                                .foregroundStyle(.white)
                                        }
                                    case .leftHand:
                                        VStack {
                                            Text("Capture your left hand")
                                                .foregroundStyle(.myKiss)
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Keep your fingers apart to avoid nail overlap")
                                                .foregroundStyle(.white)
                                        }
                                    case .leftThumb:
                                        VStack {
                                            Text("Capture your left thumb")
                                                .foregroundStyle(.myKiss)
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Keep your thumb straight and flat on the table")
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    
                                }
                                
                                Text("Capture")
                                    .font(.system(size: 14, weight: .semibold))
                                    .offset(y: 5).hidden()
                                
                            }
                            
                        }
                        
                        Spacer().frame(width: 200, height: 50)
                    }
                }
            }
        }
    }
    
}
