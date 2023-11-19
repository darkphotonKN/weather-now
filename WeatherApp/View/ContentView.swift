//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/13.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false;
    
    var body: some View {
        ZStack {
            
            // background
            BackgroundView(color1: isNight ? .black : .blue, color2: isNight ? .gray : .white)

            // Main Content Area
            VStack {

                
                
                // title
                Text("San Franciso, CA")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding([.top, .bottom], 30)
                
                
                WeatherNowView(isNight: isNight)
                
                
                // upcoming weather
                HStack(spacing: 22) {
                    // Monday
                    DayOfWeekView(day: "MON", weatherIcon: "sun.rain.fill", color: .yellow, temperature: 27)
                    // Tuesday
                    DayOfWeekView(day: "TUE", weatherIcon: "sun.rain.fill", color: Color("SpecialBlue"), temperature: 27)
                    // Wednesday
                    DayOfWeekView(day: "WED", weatherIcon: "cloud.heavyrain.fill", color: .white, temperature: 23)
                    // Thursday
                    DayOfWeekView(day: "THURS", weatherIcon: "cloud.snow.fill", color: .white, temperature: 20)
                    // Friday
                    DayOfWeekView(day: "FRI", weatherIcon: "sun.rain.fill", color: .yellow, temperature: 22)
                }
                
                Spacer()
                
                // Night Mode Toggle
//                CommonButton(buttonText: "Night Mode", state: isNight)
                Button {
                    print("It worked")
                    isNight.toggle()
                    
                   
                } label: {
                    Text("Toggle Mode")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 22, weight: .medium))
                        .cornerRadius(8)
                }
                
                
                // takes up the rest of the space to push elements to desired positions
                Spacer()
            }
            
                
        }
        // Primary Navigation
        MainMenuView()
    }
}

#Preview {
    ContentView()
}
