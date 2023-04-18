//
//  ContentView.swift
//  Aula08Matheus
//
//  Created by Student18 on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("\(viewModel.estacionamento.count))
                ForEach(viewModel.estacionamento, id:\.NomeEstacionamento) { estacionamentos in
                    VStack{
                        Text("Nome do estacionamento: \(estacionamentos.NomeEstacionamento!)")
                        Text("Endereço: \(estacionamentos.Endereco!)")
                        Text("Número de vagas: \(estacionamentos.Vagas!)")
                    }
                    
                    
                    
                }

                
                
                //                ForEach(viewModel.cars, id: \.NomeEstacionamento) { cars in
//                    VStack{
//                        HStack{
//                            Text("\(cars.NomeEstacionamento!)")
//                        }
//                    }
//
//                }
            }
                
        }.onAppear(){
            viewModel.fetch()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
