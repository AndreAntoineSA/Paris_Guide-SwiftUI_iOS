//
//  ListView.swift
//  pARRis
//
//  Created by Andre Antoine Saint Ange on 13/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: ContentView(landmark: landmark)){
                    LandmarkRows(landmark: landmark)
                }
            }
        .navigationBarTitle(Text("Arrondisement"))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
