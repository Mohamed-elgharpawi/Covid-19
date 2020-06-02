//
//  TotalDataCard.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct TotalDataCard: View {
    var name:String="Confirmed"
    var number:String="Error"
    var color:Color = .primary
    var bColor:Color = .blue
    var body: some View {
        
        GeometryReader{ geometry in
            
            VStack{
               
                Text(self.name)
                    .font(.largeTitle)
                 .padding(5)
                 .foregroundColor(self.color)
                Text(self.number)
                                   .scaledToFill()
                                   .padding(5)
                                   .foregroundColor(self.color)
                               
                               
            }//End of vstack
                .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
               
                .background(self.bColor)
             .cornerRadius(50)
            
            
            
        }// End of geometry
        
        
        
        
       
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
