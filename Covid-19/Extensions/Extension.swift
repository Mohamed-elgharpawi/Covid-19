//
//  Extension.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/14/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import Foundation


extension Int {
    
    func numberFormat() -> String {
        
        let formatter=NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        
        return formatter.string(from: NSNumber(value: self))!
        
        
        
    }}
    extension Int64{
        
              func numberFormat() -> String {
            let formatter = NumberFormatter()
            
            formatter.groupingSeparator = ","
            formatter.numberStyle = .decimal
            
            return formatter.string(from: NSNumber(value: self))!
            
        }
        
        
        
    }
    
    
    

