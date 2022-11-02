//  Date: 11/3/22
//
//  Author: Zai Santillan
//  Github: @plskz


import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // static
        // List {
        //     LandmarkRow(landmark: landmarks[0])
        //     LandmarkRow(landmark: landmarks[1])
        // }
        
        // dynamic
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        // LandmarkList()
        //     .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max", "iPad Air (5th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
