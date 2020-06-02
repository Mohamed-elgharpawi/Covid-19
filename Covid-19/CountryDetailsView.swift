//
//  CountryDetailsView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct CountryDetailsView: View {
    var countryData:CountryData
    var body: some View {
       
        
        GeometryReader{ geometry in
        VStack{
            Text(self.countryData.country)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width:geometry.size.width , height: geometry.size.height/4.5)
            
           
            CountryDetailView(name: "Confirmed:", number: self.countryData.confirmed.numberFormat())
            CountryDetailView(name: "Critical:", number: self.countryData.critical.numberFormat(),color: .yellow)
            CountryDetailView(name: "Deaths:", number: self.countryData.deaths.numberFormat(),color: .red)
              CountryDetailView(name: "Recovered", number: self.countryData.recovered.numberFormat(),color: .green)
            CountryDetailView(name: "Deaths %", number: String(format:"%.2f",self.countryData.fatalityRate),color: .red)
          
            CountryDetailView(name: "Recovery %", number: String(format:"%.2f",self.countryData.recoverdRate),color: .green)
        }.navigationBarTitle(self.countryData.country)
            
        }
        
    }
}

struct CountryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailsView(countryData: testCountryData)
    }
}
