//
//  MapView.swift
//  pARRis
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate:CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView  {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
      
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region,animated:true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[13].locationCoordinate)
    }
}
