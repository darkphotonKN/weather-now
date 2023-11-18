//
//  File.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/17.
//

import SwiftUI

struct BackgroundView: View {
    var color1: Color
    var color2: Color?
    
    
    var body: some View {
        // conditionally render based on properties passed in
        Group {
            if let color2 = color2 {
                LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            } else {
                Color(color1)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/);
            }
        }
        
       
    }
}
