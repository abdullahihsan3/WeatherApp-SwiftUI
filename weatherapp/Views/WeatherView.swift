//
//  WeatherView.swift
//  weatherapp
//
//  Created by Dev on 18/12/2023.
//

import SwiftUI

struct WeatherView: View {
    var weather : WeatherModel
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading,spacing: 5){
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                    
                }
                .padding(.top)
                .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                VStack{
                    HStack{
                        VStack(spacing: 20){
                            Image(systemName: "sun.max")
                                .font(.system(size: 40))
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150,alignment: .leading)
                        Spacer()
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .padding()
                    }
                    Spacer()
                        .frame(height: 80)
                    AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")){ image in
                        
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                    } placeholder: {
                        ProgressView()
                    }
                    Spacer()
                    
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            
            
            VStack{
                Spacer()
                VStack(alignment: .leading,spacing: 20){
                    Text("Weather now")
                        .bold()
                        .padding(.bottom)
                    
                    HStack{
                        WeatherRow(logo:"thermometer.low" , name: "Min Temp", value: weather.main.tempMin.roundDouble() + "°")
                        Spacer()
                        WeatherRow(logo:"thermometer.sun" , name: "Max Temp", value: weather.main.tempMax.roundDouble() + "°")
                    }
                    HStack{
                        WeatherRow(logo:"wind" , name: "Wind Speed", value: weather.wind.speed.roundDouble() + "m/s")
                        Spacer()
                        WeatherRow(logo:"humidity" , name: "Humidity", value: String(weather.main.humidity) + "%")
                    }
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                .padding(.bottom,20)
                .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft,.topRight])
            }
            .padding(.top,50)
            
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    WeatherView(weather: previewWeather )
}
