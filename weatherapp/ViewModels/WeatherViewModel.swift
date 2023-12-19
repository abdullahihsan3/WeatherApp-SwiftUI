//
//  WeatherViewModel.swift
//  weatherapp
//
//  Created by Dev on 19/12/2023.
//

import Foundation

class WeatherViewModel : ObservableObject{
    
    func convertToCelcius(temp:Double) -> Double{
        return temp - 273.15
    }
    func fetchIcon(iconId:String) -> String {
        switch iconId{
        case "01d","01n":
            return "sun.max"
        case "02d","02n":
            return "cloud.sun.fill"
        case "03d","03n":
            return "cloud.fill"
        case "04d","04n":
            return "cloud"
        case "09d","09n":
            return "cloud.rain"
        case "10d","10n":
            return "cloud.rain.fill"
        case "11d","11n":
            return "cloud.bolt.rain.fill"
        case "13d","13n":
            return "cloud.snow"
        case "50d","50n":
            return "wind.circle.fill"
        default:
            return "sun.max"
        }
    }
}
