//
//  ContentView.swift
//  Aula03Matheus
//
//  Created by Student18 on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var calculate = false
    @State private var imc: Double = 0
    var body: some View {
        ZStack{
            Color(.purple)
            VStack {
                
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                
                TextField("Peso ", value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .background(Color.white)
                
                
                TextField("Altura", value: $altura, format: .number)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.black)
                    .background(Color.white)

                Button("Calcular") {
                    imc = peso/(altura*altura)
                       
                }
                
                .padding(4.0)
                .cornerRadius(8)
                Spacer()
                if imc == 0 {
                    Text("Digite seus dados")
                        .foregroundColor(.gray)
                }
                else if imc < 18.5 {
                    
                    Text("Baixo peso")
                        .font(.title)
                        .foregroundColor(Color("baixoPeso"))
        
                } else if imc < 25 {
                    Text ("Normal")
                        .font(.title)
                        .foregroundColor(Color("normal"))
                } else if imc < 30 {
                    Text("Sobrepeso")
                        .font(.title)
                        .foregroundColor(Color("sobrepeso"))
                } else {
                    Text("Obesidade")
                        .font(.title)
                        .foregroundColor(Color("obesidade"))
                }
                    
                Spacer()
                Image("subtitle")
                    .resizable().scaledToFit()
                
                
                
            }
            .padding()
            
        }
        
        }
      
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
