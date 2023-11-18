//
//  CommonButton.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/17.
//

import SwiftUI

struct CommonButton: View {
    let buttonText: String
    var state: Bool?
    
    var body: some View {
        Button {
            print("It worked")
//            state.toggle()
            
           
        } label: {
            Text(buttonText)
                .frame(width: 280, height: 50)
                .background(.white)
                .font(.system(size: 22, weight: .medium))
                .cornerRadius(8)
        }
    }
    
    
}
