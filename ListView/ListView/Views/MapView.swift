//
//  MapView.swift
//  ListView
//
//  Created by Logesh Vijayan on 2022-01-26.
//

import SwiftUI
import MapKit

struct MapView: View {
    var latitude: Double
    var longitude: Double
    @State private var region = MKCoordinateRegion()

    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(latitude, longitude)
                }
        }
    }

    private func setRegion(_ latitude: Double, _ longitude: Double) {
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView(latitude: 34.011_286, longitude:  -116.166_868)
//.previewInterfaceOrientation(.portraitUpsideDown)
//    }
//}
