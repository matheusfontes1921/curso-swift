//
//  ContentView.swift
//  Aula07Matheus
//
//  Created by Student18 on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
       
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack (){
        
                AsyncImage(
                                        url: URL(string: "https://lereaprender.com.br/wp-content/uploads/2020/01/mapa-mundi.gif"),
                                        content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: 400, maxHeight: 400)
                                                
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                
                Text("\(viewModel.countries.count)")
                
                
                
                //ForEach(viewModel.countries, id: \.name) { countries in
                    //VStack{
                      //  HStack{
                        //    Text("\(countries.name!)")
                        //}
                    //}
                    
                //}*/
                Spacer()
            }

        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
