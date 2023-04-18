//
//  ViewModel.swift
//  Aula08Matheus
//
//  Created by Student18 on 18/04/23.
//

import SwiftUI

class ViewModel : ObservableObject {
    @Published var estacionamento : [Estacionamento] = []
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/getAll")else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
        
        do {
            let parsed = try JSONDecoder().decode([Estacionamento].self,from: data)
            DispatchQueue.main.async{
                self?.estacionamento = parsed
            }
        }
        catch{
            print(error)
        }
    }
        task.resume()
}

}
