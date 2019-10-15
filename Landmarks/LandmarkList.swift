//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kane Harry on 10/12/19.
//  Copyright © 2019 Kane Harry. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) {
                    landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(UserData())
    }
}
