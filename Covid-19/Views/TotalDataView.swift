//
//  TotalDataView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    var totalData:TotalData
    var body: some View {
        GeometryReader{ geometry in
            
        VStack{
            
            HStack{
                TotalDataCard(name: "Confirmed", number: self.totalData.confirmed.numberFormat(),color: .white,bColor: Color("conf"))
                
        
            
                TotalDataCard(name: "Critical", number: self.totalData.critical.numberFormat(),color: .white,bColor: Color("critical"))
                
            
            
            }.frame( height: geometry.size.height/3.2)
            
            HStack{
                TotalDataCard(name: "Deaths", number: self.totalData.deaths.numberFormat(),color: .white,bColor: .black)
                TotalDataCard(name: "Death", number: String(format: "%.2f" , self.totalData.fatalityRate)+" %",color: .white,bColor: .black)
                    
                
                
            }.frame( height: geometry.size.height/3.2)
            
            HStack{
                
               
                           
                   
                       
                TotalDataCard(name: "Recovered", number: self.totalData.recovered.numberFormat(),color: .white,bColor: .green)
        
                TotalDataCard(name: "Recovery", number: String(format: "%.2f", self.totalData.recoverdRate)+" %",color: .white,bColor: .green)
                           
                       
                       
            }.frame( height: geometry.size.height/3.2)




    }//End of v stack
            .frame( height: geometry.size.height)
        .padding(10)
        }
    }}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
