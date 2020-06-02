//
//  ListHeaderView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/13/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    var body: some View {
        HStack{
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width:100,alignment: .leading)
                .padding(.leading,15)
            Spacer()

            Text("Exact")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height:40)
            .padding(.leading,5)
            Spacer()

            Text("Death")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height:40)
            .padding(.leading,5)
            Spacer()
            Text("Recover")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height:40)
            .padding(.trailing,15)
            

        }.background(Color.secondary)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
