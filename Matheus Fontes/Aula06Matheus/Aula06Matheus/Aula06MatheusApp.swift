//
//  Aula06MatheusApp.swift
//  Aula06Matheus
//
//  Created by Student18 on 13/04/23.
//

import SwiftUI
import MapKit

@main
struct Aula06MatheusApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(localAtual: MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 19.863284, longitude: -43.997129), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.1)))
        }
    }
}
