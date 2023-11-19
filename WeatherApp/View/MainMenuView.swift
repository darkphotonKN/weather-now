//
//  File.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/19.
//

import SwiftUI

struct MainMenuView: View {
    // navigation items
    private let navList: [String] = ["Home", "Weather", "Contact"]
    
    var body: some View {
        NavigationStack {
            List(navList, id: \.self) { item in
                NavigationLink("\(item)", destination: HomeView())
            }
        }
    }
}
