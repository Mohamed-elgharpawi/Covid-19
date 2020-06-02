//
//  CountryDetailView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    var name:String="Confirmed"
       var number:String="Error"
       var color:Color = .primary
    var body: some View {
        VStack{
            HStack{
                Text(self.name)
                    .font(.title)
                    .padding(5)
                Spacer()
                Text(self.number)
                .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            }
            Divider()
            
            
            
        }.padding(.leading)
            .padding(.trailing)




    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView()
    }
}
