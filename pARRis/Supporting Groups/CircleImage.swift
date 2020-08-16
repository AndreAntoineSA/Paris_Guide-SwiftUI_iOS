//
//  CircleImage.swift
//  pARRis
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image:Image
    var body: some View {
        
        image
            .resizable()
            .frame( height: 300)
            .clipShape(Rectangle())
            //.overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[13].image)
    }
}
