//
//  ContentView.swift
//  Covid-19
//
//  Created by mohamed elgharpawi on 5/12/20.
//  Copyright © 2020 mohamed elgharpawi. All rights reserved.
//

import SwiftUI


struct ContentView: View {

   

    var body: some View {
        
        
        VStack{
           
        TabView{
            RecentView()
                .tabItem{
                    Tap(imageName: "house", text: "Current").tag(0)
                    
                
            
            
            }
            MapContainerView().edgesIgnoringSafeArea(.vertical).tabItem{
                                   Tap(imageName: "map", text: "Map").tag(1)
                                   
                                   
                               }
            
            TotalView().tabItem{
                Tap(imageName: "chart.bar", text: "Summary").tag(2)
                
                
            }
            
            
        }
            
        
        }
        
    }
    
    
}
private struct Tap:View {
    let imageName:String
    let text:String
    var body : some View {
        
        VStack{
            
            Image(systemName: imageName)
            Text(text)
            
        }
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
