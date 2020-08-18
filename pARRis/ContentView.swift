//
//  ContentView.swift
//  Paris Guide
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark:Landmark
    var body: some View {
        VStack {

            RectangleImage(image: landmark.image)
               // .offset(y: 0)
                //.padding(.bottom, -10)
                //.edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text("Monuments:")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.monuments)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                .padding(.top)
                HStack {
                    Text("Landmarks :")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.landmarks)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                .padding(.top)
                HStack {
                    Text("Museums and Art Galleries:")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.museums)
                        .font(.body)
                }
                .padding(.top)
                
                HStack {
                    Text("Parks and Gardens: ")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.park)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                .padding(.top)
                HStack {
                    Text("Postal Code")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                .padding(.top)
                HStack {
                    Text("Population")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.population)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        
                }
                .padding(.top)

               
            }
            .padding(.horizontal)
            Spacer()
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.bottom)
            .frame(height:100)
                .padding(.top)
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
        
    }
}
