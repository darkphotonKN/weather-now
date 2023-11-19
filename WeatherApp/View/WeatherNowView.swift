//
//  WeatherNowView.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/18.
//

import SwiftUI

struct WeatherNowView: View {
    var isNight: Bool;
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: isNight ? "moon.fill" : "sun.min.fill")
                .symbolRenderingMode(.multicolor)
                .resizable()
                .foregroundStyle(.yellow)
                .frame(width: 130, height: 130)
                .padding(.bottom, 10)
            Text("13°")
                .font(.system(size: 80, weight: .medium))
                .padding(.top, 10)
                .foregroundColor(.white)
        }.padding(.bottom, 20)
        
    }
}
