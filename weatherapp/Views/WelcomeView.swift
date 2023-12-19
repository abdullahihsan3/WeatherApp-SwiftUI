//
//  WelcomeView.swift
//  weatherapp
//
//  Created by Dev on 18/12/2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    @State private var cityName: String = ""
    var weatherManager = WeatherManager()
    @State var weather : WeatherModel?
    
    var body: some View {
        NavigationView {
            VStack{
                VStack(spacing: 20, content: {
                    Text("Welcome to the Weather App")
                        .bold()
                        .font(.title)
                    
                    Text("Please share your current location to get the weather in your area")
                        .padding()
                })
                .multilineTextAlignment(.center)
                .padding()
                
                LocationButton(.shareCurrentLocation){
                    locationManager.requestLocation()
                }
                .cornerRadius(30)
                .symbolVariant(.fill)
                .foregroundColor(.white)
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        }
        .navigationViewStyle(.stack)
       
    }
    

}

#Preview {
    WelcomeView()
}
