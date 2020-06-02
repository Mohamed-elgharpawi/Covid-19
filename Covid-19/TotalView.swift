//
//  TotalView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct TotalView: View {
    @ObservedObject var covidFetch=CovidFetchRequest()
    var body: some View {
        
        NavigationView{
            GeometryReader{ geometry in
        VStack{
            
            TotalDataView(totalData: self.covidFetch.totalData)

        }.background(Image("covid-19"))
            .navigationBarTitle("Global 🌍 Numbers",displayMode: .inline).frame(height:geometry.size.height)
            
            
            

        }
        
    }
    
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
