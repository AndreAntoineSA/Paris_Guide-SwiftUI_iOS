//
//  LandmarkRows.swift
//  pARRis
//
//  Created by Andre Antoine Saint Ange on 13/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct LandmarkRows: View {
    var landmark:Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            Text(landmark.state)
                .font(.footnote)
                .padding(.top, 44.0)
        }.padding(.leading,10)
    }
}

struct LandmarkRows_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            LandmarkRows(landmark: landmarkData[0])

            LandmarkRows(landmark: landmarkData[1])
                           
            LandmarkRows(landmark: landmarkData[2])
                           
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
