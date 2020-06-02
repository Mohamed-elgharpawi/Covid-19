//
//  CountryDataRowView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/13/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData:CountryData
    var body: some View {
        GeometryReader{ geometry in
       VStack {
        Text(self.countryData.country)
               
            .font(.title)
            .fontWeight(.bold)

            .lineLimit(2)
            .frame(width:geometry.size.width,height:50,alignment:.center)
            .background(Color("back"))
        .foregroundColor(.white)
        .cornerRadius(8)
        
            
                       
        
        HStack{
            VStack{

                   Text("Exact")
                   
                   .font(.title)
                   .frame(height:40)
                   .padding(.leading,5)
                 
                Text(self.countryData.confirmed.numberFormat())
                .font(.body)
                .frame(height:40)
                .padding(.leading,5)
               
            }
            Spacer()

            VStack{
                   Text("Death")
                   .font(.title)
                   .frame(height:40)
                   .padding(.leading,5)
                Text(self.countryData.deaths.numberFormat())
                .frame( height: 40)
                .font(.body)
                   .padding(.leading,5)
             .foregroundColor(.red)
               
                
                
            }
            Spacer()
            VStack{
                   Text("Recover")
                   .font(.title)
                   .frame(height:40)
                   .padding(.trailing,10)
                Text(self.countryData.recovered.numberFormat())
               .padding(.trailing,10)
                     .frame(height: 40)
                         .font(.body)
                  
                      .foregroundColor(.green)
                      
            
            
            }

               }
           
        
        
               
            }
               
      
       .cornerRadius(8)
            
            
        }
        
        
       
        
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
