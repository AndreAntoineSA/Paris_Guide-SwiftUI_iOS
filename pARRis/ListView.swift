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
            .navigationBarTitle(Text("The 20 Arrondisements"),displayMode: .inline)
            .background(NavigationConfigurator { nc in
                    nc.navigationBar.barTintColor = .systemGray4
                    nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
            })
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
       
    }
    
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
