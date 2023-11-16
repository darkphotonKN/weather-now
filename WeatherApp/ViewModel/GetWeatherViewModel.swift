//
//  GetWeatherViewModel.swift
//  WeatherApp
//
//  Created by Kranti on 2023/11/14.
//

import Foundation

class GetWeatherViewModel: ObservableObject {
    @Published var cityName: String = "Los Angeles"
    @Published var limit: Int32 = 10
    
    init() {
        fetchInitialWeatherData()
    }
    
    func fetchWeatherData(url: URL) {
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            // unwrap the data and check validity
            guard let data = data else { return }
            
            
            // convert to JSON
            guard let jsonObject = try? JSONSerialization.jsonObject(with: data) else {
                
                return
            }
            
            print("weather data:", jsonObject)
        }.resume();
    }
    
    func fetchInitialWeatherData() {
        // api key: 9cecc7139b8132960e9a3bc6b4853505
        // api endpoint
        let geocodingEndpoint = "https://api.openweathermap.org/geo/1.0/direct?q=\(cityName)&limit=\(limit)&appid=\(ApiConfig.apiKey)"

        
        // create URL Object
        guard let url = URL(string: geocodingEndpoint) else { return };
        
        // create URL session
        URLSession.shared.dataTask(with: url) { data, response, error in
            // check validity of data
            guard let data = data else { return }
            // convert to readable JSON
            guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [[String: Any]],
                // grab the first collection of the JSON object
                let jsonFirstItem = jsonObject.first,
                // grab the values we need
                let lat = jsonFirstItem["lat"] as? Double,
                let lon = jsonFirstItem["lon"] as? Double else {
                    print("Problem accessing json Object")
                    return }
            
            print("lat: \(lat) lon: \(lon)")
            
            print("data jsonObj: \(jsonObject)")
            
            // request subsequent api
        
            let weatherEndpoint = "https://api.openweathermap.org/data/3.0/onecall/timemachine?lat=\(lat)&lon=\(lon)&dt=''&appid=\(ApiConfig.apiKey)"
            
            // create URL object
            guard let URL_weather = URL(string: weatherEndpoint) else { return }
            
            // create a nested dataTask to fetch subsequent api
            self.fetchWeatherData(url: URL_weather)
        }.resume()
        
       
        
    }
    

}

