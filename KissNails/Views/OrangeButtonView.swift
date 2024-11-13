//
//  OrangeButtonView.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
//

import Foundation
import SwiftUI

struct OrangeButtonView: View {
    
    var text: String
    
    var body: some View {
        Text(text).frame(width: 250, height: 50).background(Color(.myKiss)).foregroundStyle(.white).cornerRadius(30)
    }
}

struct DisabledOrangeButtonView: View {
    
    var text: String
    
    var body: some View {
        Text(text).frame(width: 250, height: 50).background(Color(.myMiddleGrey)).foregroundStyle(.white).cornerRadius(30)
    }
}

struct OutlinedOrangeButton: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .frame(width: 250, height: 50).foregroundStyle(.myKiss).overlay(RoundedRectangle(cornerRadius: 30).stroke(.myKiss, lineWidth: 2.5))
    }
}
