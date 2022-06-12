/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
/*  隐藏自带箭头方式1
                LandmarkRow(landmark: landmark).background(
                    NavigationLink("", destination: {
                        LandmarkDetail(landmark: landmark)
                    }).opacity(0)
                );
*/
                /// 隐藏自带箭头方式1
                ZStack{
                    LandmarkRow(landmark: landmark);
                    NavigationLink("", destination: {
                        LandmarkDetail(landmark: landmark)
                    }).opacity(0)
                }
            }.listStyle(.plain)  /// 使cell full width
            .navigationTitle("xxx")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
