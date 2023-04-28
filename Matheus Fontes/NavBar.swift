//
//  NavBar.swift
//  ProjetoFinal
//
//  Created by Student23 on 26/04/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView
        {
            TradutorGeral()
                .tabItem()
            {
                Text("Tradutor")
            }
            Dicionario()
                .tabItem()
                {
                    Text("Dicionario")
                }
            
            Quiz()
                .tabItem()
                {
                    Text("Quiz")
                }
            
        }
        
    }
    
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
