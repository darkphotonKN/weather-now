//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // Main Content Area
            VStack {
                
                // title
                Text("City Name")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding([.top, .bottom], 30)
                
                
                
                // weather symbol & weather
                VStack(spacing: 8) {
                    Image(systemName: "sun.min.fill")
                        //.renderingMode(.original) // what is this for?
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: 120, height: 120)
                    Text("13°")
                        .font(.system(size: 110, weight: .medium))
                        .padding(.top, 10)
                        .foregroundColor(.white)
                }.padding(.bottom, 40)
                
                
                
                // upcoming weather
                HStack(spacing: 22) {
                    // Monday
                    DayOfWeekView(day: "MON", weatherIcon: "sun.rain.fill", color: .yellow, temperature: 27)
                    // Tuesday
                    DayOfWeekView(day: "TUE", weatherIcon: "sun.rain.fill", color: Color("SpecialBlue"), temperature: 27)
                    // Wednesday
                    DayOfWeekView(day: "WED", weatherIcon: "cloud.heavyrain.fill", color: .blue, temperature: 23)
                    // Thursday
                    DayOfWeekView(day: "THURS", weatherIcon: "cloud.snow.fill", color: .white, temperature: 20)
                    // Friday
                    DayOfWeekView(day: "FRI", weatherIcon: "sun.rain.fill", color: .yellow, temperature: 22)
                   
                    
                }
                
                Spacer()
                
                Button {
                    print("It worked")
                } label: {
                    Text("Night Mode")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 22, weight: .medium))
                        .cornerRadius(8)
                }
                
                // takes up the rest of the space to push elements to desired positions
                Spacer()
            }
            
                
        }
    }
}

#Preview {
    ContentView()
}
