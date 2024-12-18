//
//  RecentMeasurementsViewModel.swift
//  KissNails
//
//  Created by Jason bartley on 10/19/24.
//

import Foundation
import SwiftUI

final class RecentMeasurementsViewModel: ObservableObject {
    @Published var recentMeasuremnets: SaveNailImagesResponse?
    
    @Published var recentMeasurementsDidReturn: Bool = false
    
    @Published var noMeasurements: Bool = false
    
}
