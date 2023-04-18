//
//  Countries.swift
//  Aula07Matheus
//
//  Created by Student18 on 14/04/23.
//

import Foundation

struct Name : Codable {
    let common: String?
    let official : String?
    let nativeName: NativeName?
}
struct NativeName : Codable {
    let eng: Eng?
}
struct Eng : Codable {
    let official: String?
    let common: String?
}
struct Flags:Codable{
    let png: String?
    let svg: String?
}
struct Countries : Decodable{
    
    let name: Name?
    let independent: Bool?
    let capital: [String?]?
    let continents: [String?]
    let flags: Flags?
    let startOfWeek: String?
}


