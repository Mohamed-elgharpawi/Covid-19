//
//  SearchView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText:String

    var body: some View {

         HStack {
             Image(systemName: "magnifyingglass")
             TextField("write Country name..", text:$searchText).foregroundColor(Color.primary)
         }
         .padding()
         .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 0).foregroundColor(Color.black))
        
        
    }
}


