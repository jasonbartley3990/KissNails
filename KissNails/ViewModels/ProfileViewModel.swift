//
//  ProfileViewModel.swift
//  KissNails
//
//  Created by Jason bartley on 10/18/24.
//

import Foundation
import SwiftUI

final class ProfileViewModel: ObservableObject {
    @Published var recentMeasuremnets: [Measurements] = []
    
    @Published var isShowingSignOutView: Bool = false
}
