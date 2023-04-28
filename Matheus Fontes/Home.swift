//
//  Home.swift
//  ProjetoFinal
//
//  Created by Student23 on 25/04/23.
//

import SwiftUI

struct Home: View
{
    var body: some View
    {
        
        NavigationStack
        {
            ZStack
            {
//                LinearGradient(colors, .white], startPoint: .top, endPoint: .bottom)
               
                    Color("back")
                    .ignoresSafeArea()
                
                VStack
                {
                    Text(" ")
                    Text("AcessoVis")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: Tradutor())
                    {
                        Text("SOU DEFICIENTE VISUAL")
                        
                    }
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.white)
                    
                    .cornerRadius(16)
                    
                    
                    NavigationLink(destination: NavBar())
                    {
                        Text("QUERO APRENDER MAIS")
                    
                }
                .foregroundColor(.blue)
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                    Spacer()
                }

            }
            
        }
        
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
