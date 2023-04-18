//
//  ViewModel.swift
//  Aula07Matheus
//
//  Created by Student18 on 14/04/23.
//

import SwiftUI



class ViewModel : ObservableObject {
    @Published var countries : [Countries] = []
    func fetch(){
        guard let url = URL(string: "https://restcountries.com/v3.1/all")else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){
            [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
        
        do {
            let parsed = try JSONDecoder().decode([Countries].self,from: data)
            DispatchQueue.main.async{
                self?.countries = parsed
            }
        }
        catch{
            print(error)
        }
    }
        task.resume()
}

}
