//
//  ContentView.swift
//  Aula06Matheus
//
//  Created by Student18 on 13/04/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var showingSheet = false
    
    let locations = [
        Location(id: 1, annotation: CLLocationCoordinate2D( latitude: 19.863284, longitude: -43.997129), coordenations:  MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 19.863284, longitude: -43.997129), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), nome: "Toca da Raposa 1"),
        Location(id: 2, annotation:CLLocationCoordinate2D( latitude: -19.833793, longitude: -44.00315 ), coordenations: MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: -19.833793, longitude: -44.00315 ), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), nome: "Toca da Raposa 2"),
        Location(id: 3, annotation: CLLocationCoordinate2D( latitude: -19.833793, longitude: -44.00315 ), coordenations: MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: -19.866108, longitude: -43.970769), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), nome: "Toca da Raposa 3")
    ]
    
    
    
    @State var localAtual: MKCoordinateRegion
    
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .top, endPoint: .bottom)
                               .ignoresSafeArea()
            VStack{
                
                Text("MAPAS")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Map(coordinateRegion: $localAtual, annotationItems: locations) { location in
                    
                    MapMarker(coordinate: location.annotation)
                   
                }

                
                ForEach(locations) { location in
                    VStack{
                        
                        Button("\(location.nome)"){
                            localAtual = location.coordenations
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            SheetView( pLocation: Location(id: location.id,annotation: location.annotation,coordenations: location.coordenations, nome: location.nome))
                               }

                        .padding()
                        
                    }
                    
                }
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(localAtual: MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 19.863284, longitude: -43.997129), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.1)))
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var pLocation : Location
    var body: some View {
        Text(pLocation.nome)
        .font(.title)
        
    }
}
