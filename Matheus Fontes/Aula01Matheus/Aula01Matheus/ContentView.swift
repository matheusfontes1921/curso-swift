//
//  ContentView.swift
//  Aula01Matheus
//
//  Created by Student18 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Image("hackatruck")
                Spacer()
                Image("hackatruck")
                    .clipShape(Circle())
                
                Spacer()
                HStack{
                    
                    Text("Maker")
                        .foregroundColor(.yellow)
                        .background(.black)
                    Text("Space")
                    
                        .foregroundColor(.red)
                        .background(.black)
                }
                .frame(width: 300, height: 200)
                .background(.black)
                    
            }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
