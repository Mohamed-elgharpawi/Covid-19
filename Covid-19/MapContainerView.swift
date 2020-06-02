//
//  MapContainerView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/16/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI


struct MapContainerView: View {
    @ObservedObject var featch=CovidFetchRequest()
    var body: some View {
        MapView(countryData: $featch.allCountries)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
