//
//  ContentView.swift
//  Aula04Matheus
//
//  Created by Student18 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            OneView()
                .tabItem {
                    Image(systemName: "1.lane")
                    Text("First")
                }
            SecondView()
                .tabItem
            {
                Image(systemName: "2.lane")
                Text("Second")
            }
            ThirdView()
                .tabItem{
                    Image(systemName: "3.lane")
                    Text("Third")
                }
            FourthView()
                .tabItem{
                    Image(systemName: "4.lane")
                    Text("Fourth")
                }
            FifthView()
                .tabItem{
                    Image(systemName: "5.lane")
                    Text("Fiifth")
                }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
