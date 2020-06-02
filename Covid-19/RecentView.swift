//
//  RecentView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/13/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI



struct RecentView: View {
    @ObservedObject var covidFetch=CovidFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible=false


    
    var body: some View {
        
        NavigationView{
            
            GeometryReader{ geometry in
            VStack{
                if self.isSearchVisible {
                    SearchView(searchText: self.$searchText)
                  
                    
                }
                
               
                
//                ListHeaderView()
                List{

                    ForEach(self.covidFetch.allCountries.filter{
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        NavigationLink(destination: CountryDetailsView(countryData: countryData)){
                            VStack{  CountryDataRowView(countryData: countryData)
                            }.frame(width: geometry.size.width/1.2, height: geometry.size.height/5)
                                
                           
                                    
                            
                            
                        }
                        
                        
                      
                    }
                
                    
                    
                    
                }
                
                
            }// End Of VStack
            
                .navigationBarTitle("Current Situation 📊",displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    self.isSearchVisible.toggle()
                    
                    if !self.isSearchVisible {
                        
                        self.searchText=""
                        
                    }
                    
                },
                label: {Image(systemName: "magnifyingglass")
                    
                    
                }))
            
            }
            
        }// End Of navigationView
       
        
        
        
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
