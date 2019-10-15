//
//  UserData.swift
//  Landmarks
//
//  Created by Kane Harry on 10/13/19.
//  Copyright © 2019 Kane Harry. All rights reserved.
//


import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
