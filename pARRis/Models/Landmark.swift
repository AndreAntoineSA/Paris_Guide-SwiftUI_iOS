//
//  Landmark.swift
//  Paris Guide
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable , Identifiable{
    var id: Int
    var name, sub, monuments, landmarks, museums, population : String
 //   var sub: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
