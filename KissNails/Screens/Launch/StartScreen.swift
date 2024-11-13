//
//  StartScreen.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct StartScreen: View {
    
    var body: some View {
        NavigationView {
            VStack {
                if SharedScreenManager.shared.height ?? 0 < 650 {
                    HStack {
                        VStack {
                            Image("StartScreenLeftSide1")
                            Image("StartScreenLeftSide2")
                            Image("MyEditLogoOrangeFont")
                        }
                        
                        VStack {
                            Image("StartScreenRightSide1")
                            Image("StartScreenRightSide2")
                            Image("StartScreenRightSide3")
                        }
                    }.ignoresSafeArea(.all)
                        .offset(y: -34)
                } else {
                    
                    HStack {
                        VStack {
                            Image("StartScreenLeftSide1")
                            Image("StartScreenLeftSide2")
                            Image("MyEditLogoOrangeFont")
                        }
                        
                        VStack {
                            Image("StartScreenRightSide1")
                            Image("StartScreenRightSide2")
                            Image("StartScreenRightSide3")
                        }
                    }.ignoresSafeArea(.all)
                }
                    
                
                Text("Measure your nail & make my EDITion").foregroundStyle(.myKiss).padding(.top, -35)
                
                Spacer()
                
                NavigationLink(destination: {
                    LoginScreen()
                }, label: {
                    OutlinedOrangeButton(text: "Log In")
                }).buttonStyle(PlainButtonStyle())
                
                Spacer().frame(width: 350, height: 25)
                
                Spacer()
                
            }
        }
    }
}




