//
//  ContentView.swift
//  pARRis
//
//  Created by Andre Antoine Saint Ange on 08/08/2020.
//  Copyright © 2020 Andre Antoine Saint Ange. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark:Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
            .edgesIgnoringSafeArea(.top)
            .frame(height:200)

            CircleImage(image: landmark.image)
                .offset(y: -120)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    Text("Monuments:")
                        .font(.subheadline)
                    Spacer()
                    Text("Louvre Palace, Palais Royal, Sainte-Chapelle, Saint-Germain-l’Auxerrois Church, Saint-Roch church")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("Landmarks :")
                        .font(.subheadline)
                    Spacer()
                    Text("Forum des Halles, Conciergerie, Place Dauphine, Place Vendôme")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("Museums and Art Galleries:")
                        .font(.subheadline)
                    Spacer()
                    Text("Louvre Museum, Galerie Nationale du Jeu de Paume, Orangerie Museum")
                        .font(.body)
                }
                
                HStack {
                    Text("Parks and Gardens: ")
                        .font(.subheadline)
                    Spacer()
                    Text("Tuileries, Jardin des Halles, Palais-Royal gardens")
                        .font(.body)
                }
                HStack {
                    Text("Postal Code")
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.body)
                }
                HStack {
                    Text("Population")
                        .font(.subheadline)
                    Spacer()
                    Text("17,400")
                        .font(.body)
                        
                }

                Spacer()
            }
            .padding()
            
        Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[12])
        
    }
}
