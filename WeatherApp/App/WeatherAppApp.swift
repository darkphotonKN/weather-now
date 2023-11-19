//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/13.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    @StateObject var getWeatherViewModel = GetWeatherViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
        }
    }
}
