//
//  Model.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/13/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import Foundation

struct TotalData {
    let confirmed:Int
    let critical :Int
    let deaths :Int
    let recovered :Int
    var fatalityRate: Double{
        return(100.00*Double(deaths)) / Double(confirmed)
        
    }
    
    var recoverdRate: Double{
        return(100.00*Double(recovered)) / Double(confirmed)
        
    }
}

struct CountryData {
    let country:String
    let confirmed:Int64
    let critical :Int64
    let deaths :Int64
    let recovered :Int64
    let longitude :Double
    let latitude:Double
    var fatalityRate: Double{
        return(100.00*Double(deaths)) / Double(confirmed)
        
    }
    
    var recoverdRate: Double{
        return(100.00*Double(recovered)) / Double(confirmed)
        
    }
    
}

let testTotalData=TotalData(confirmed: 200, critical: 1111, deaths: 1221, recovered: 1221)

let testCountryData=CountryData(country: "egypt", confirmed: 1000, critical: 222, deaths: 333, recovered: 444, longitude: 0.0, latitude: 0.0)
