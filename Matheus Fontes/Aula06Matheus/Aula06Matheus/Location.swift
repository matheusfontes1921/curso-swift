//
//  Location.swift
//  Aula06Matheus
//
//  Created by Student18 on 13/04/23.
//

import Foundation
import MapKit

struct Location : Identifiable {
    var id: Int
    var annotation: CLLocationCoordinate2D
    var coordenations: MKCoordinateRegion
    var nome: String
    

}
