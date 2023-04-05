//
//  ContentView.swift
//  Aula01MatheusParte02
//
//  Created by Student18 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("foto-caminhao-hackatruck")
                .brightness(0.6)
                
            
            VStack {

                Text("Bem vindo, Matheus")
                    .padding(.top)
                    .font(.largeTitle)
                Text("Fulano")
                    .padding(.top)
                Spacer()
                Image("hackatruck")
                }

            }
        .padding()
        }
       
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
