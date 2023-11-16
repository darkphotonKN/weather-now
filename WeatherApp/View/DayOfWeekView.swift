//
//  DayOfWeekView.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/15.
//

import SwiftUI

struct DayOfWeekView: View {
    let day: String
    let weatherIcon: String
    let color: Color
    let temperature: Int32
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 18))
                .foregroundStyle(.white)
            Image(systemName: weatherIcon)
                .resizable()
                .foregroundStyle(color)
                .frame(width: 44, height: 44)
            Text("\(temperature)°")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
        }

    }
    
}
