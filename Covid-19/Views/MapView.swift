//
//  MapView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI
import MapKit
import UIKit

struct MapView: UIViewRepresentable {
    
    
    @Binding var countryData:[CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        var allAnnotations:[CoronaCasesAnnotation]=[]
        
        for cData in countryData{
            let title=cData.country + "\n confirmed:" + cData.confirmed.numberFormat() + "\n Death:" + cData.deaths.numberFormat()
            let coordinates=CLLocationCoordinate2D(latitude: cData.latitude, longitude: cData.longitude)
            allAnnotations.append(CoronaCasesAnnotation(title: title, coordinate: coordinates))
            
            
        }
        
        uiView.annotations.forEach{(uiView.removeAnnotation($0))}
       

        uiView.addAnnotations(allAnnotations)
    }
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
      return MKMapView()
    }
    
   
    
    
    
    
}
class CoronaCasesAnnotation:NSObject,MKAnnotation{
    
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(title:String?,coordinate: CLLocationCoordinate2D) {
        self.title=title
        self.coordinate=coordinate
                
               

    }
    
    
    
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
