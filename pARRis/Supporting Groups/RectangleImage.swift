//
//  CircleImage.swift
//  Paris Guide
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct RectangleImage: View {
    
    var image:Image
    var body: some View {
        
        image
            .resizable()
            .frame( height: 300)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.gray, lineWidth: 1))
            .shadow(radius: 15)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: landmarkData[13].image)
    }
}
