//
//  Quiz.swift
//  ProjetoFinal
//
//  Created by Student23 on 25/04/23.
//

import SwiftUI

struct Quiz: View {
    var body: some View {
        VStack
        {
            Text("QUIZ")
                .font(.largeTitle)
            Spacer()
            Image("braille")
                .resizable()
                .frame(maxWidth: 400, maxHeight: 400)
            Spacer()
            
            Text("Qual a tradução correta para o texto acima?")
                .font(.title3)
            Spacer()
            
            
            HStack{
                Button("A) Teste") {
                    
                }
                .font(.title3)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(.gray)
                .padding()
                
                Button("B) Teste2") {
                    
                }
                .font(.title3)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(.gray)
                .padding()
                
                
            }
            HStack{
                Button("C) Teste3") {
                    
                }
                .font(.title3)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(.gray)
                .padding()
                Button("D) Teste4") {
                    
                }
                .font(.title3)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(.gray)
                .padding()
                
                
            }
        }
        
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
