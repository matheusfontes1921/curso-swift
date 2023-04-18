//
//  Cars.swift
//  Aula08Matheus
//
//  Created by Student18 on 18/04/23.
//

import Foundation

struct Estacionamento:Decodable {
    let NomeEstacionamento: String?
    let Endereco: String?
    let Vagas: Int?
    let Carros: [Carros?]?
    
}

struct Carros:Codable{
    let Modelo: String?
    let Ano: Int?
    let Cor: String?
    let Preco: Float?
}
