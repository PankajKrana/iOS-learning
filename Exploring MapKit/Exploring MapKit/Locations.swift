//
//  Locations.swift
//  Exploring MapKit
//
//  Created by Pankaj Kumar Rana on 4/19/25.
//

import Foundation
import MapKit

struct Locations: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    let address: String
    
    var coordinate: CLLocationCoordinate2D {
        .init(latitude: latitude, longitude: longitude)
    }
}

extension Array where Element == Locations {
    var coordinates: [CLLocationCoordinate2D] {
        self.map {$0.coordinate }
    }
}

// Locations in Spain
extension Locations {
    static let monteSantiago = Locations(
        name: "Monte Santiago",
        latitude: 42.9903,
        longitude: -2.9875,
        address: "Burgos, Castilla y León, Spain"
    )
    
    static let gorbeaNaturalPark = Locations(
        name: "Gorbea Natural Park",
        latitude: 43.0500,
        longitude: -2.8333,
        address: "Araba/Álava, Basque Country, Spain"
    )
    
    static let otzarretaForest = Locations(
        name: "Otzarreta Forest",
        latitude: 43.0313,
        longitude: -2.7291,
        address: "Zeanuri, Bizkaia, Basque Country, Spain"
    )
    
    static let sanJuanDeGaztelugatxe = Locations(
        name: "San Juan de Gaztelugatxe",
        latitude: 43.4487,
        longitude: -2.7849,
        address: "Bermeo, Bizkaia, Basque Country, Spain"
    )
    
    static let urkiolaNaturalPark = Locations(
        name: "Urkiola Natural Park",
        latitude: 43.1206,
        longitude: -2.6358,
        address: "Durangaldea, Bizkaia, Basque Country, Spain"
    )
    
    static let playaDeLaga = Locations(
        name: "Playa de Laga",
        latitude: 43.4048,
        longitude: -2.6572,
        address: "Ibarrangelu, Bizkaia, Basque Country, Spain"
    )
    
    static let zumaiaFlysch = Locations(
        name: "Zumaia Flysch",
        latitude: 43.2953,
        longitude: -2.2581,
        address: "Zumaia, Gipuzkoa, Basque Country, Spain"
    )
    
    static let pagoetaNaturalPark = Locations(
        name: "Pagoeta Natural Park",
        latitude: 43.2435,
        longitude: -2.1497,
        address: "Aia, Gipuzkoa, Basque Country, Spain"
    )
    
    static let gaztelugatxe = Locations(
        name: "Gaztelugatxe",
        latitude: 43.4500,
        longitude: -2.7800,
        address: "Bermeo, Bizkaia, Basque Country, Spain"
    )

    static let locationsInSpain: [Locations] = [
        .monteSantiago,
        .gorbeaNaturalPark,
        .otzarretaForest,
        .sanJuanDeGaztelugatxe,
        .urkiolaNaturalPark,
        .playaDeLaga,
        .zumaiaFlysch,
        .pagoetaNaturalPark,
        .gaztelugatxe
    ]
}

/// Some another location


extension CLLocationCoordinate2D {
    static let tajMahal = CLLocationCoordinate2D(latitude: 27.174969, longitude: 78.042134)
    
    static let agraFort = CLLocationCoordinate2D(latitude: 27.1795, longitude: 78.0211)
        
    // Mehtab Bagh – 27.1800, 78.0365
    static let mehtabBagh = CLLocationCoordinate2D(latitude: 27.1800, longitude: 78.0365)
    
    // Itimad-ud-Daulah’s Tomb – 27.2005, 78.0500
    static let itimadUdDaulah = CLLocationCoordinate2D(latitude: 27.2005, longitude: 78.0500)
    
    // Akbar’s Tomb (Sikandra) – 27.2150, 77.9506
    static let akbarsTomb = CLLocationCoordinate2D(latitude: 27.2150, longitude: 77.9506)
    
    
    
    
}

extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
    static let paris = CLLocationCoordinate2D(latitude: 48.856788, longitude: 2.351077)
}


