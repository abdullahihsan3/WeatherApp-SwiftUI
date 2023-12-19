//
//  LocationManager.swift
//  weatherapp
//
//  Created by Dev on 18/12/2023.
//

import Foundation
import CoreLocation

class LocationManager : NSObject, ObservableObject, CLLocationManagerDelegate{
    let manager = CLLocationManager()

    @Published var location : CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    func requestLocation(){
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error Getting Location",error)
        isLoading = false
    }
    func getCoordinates(from cityName: String) async throws -> CLLocationCoordinate2D {
        let geocoder = CLGeocoder()

        do {
            let placemarks = try await geocoder.geocodeAddressString(cityName)
            
            if let location = placemarks.first?.location {
                return location.coordinate
            } else {
                throw NSError(domain: "YourAppDomain", code: 1, userInfo: [NSLocalizedDescriptionKey: "No coordinates found for the city"])
            }
        } catch {
            throw error
        }
    }
}
