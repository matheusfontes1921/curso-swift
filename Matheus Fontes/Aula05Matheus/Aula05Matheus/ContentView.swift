//
//  ContentView.swift
//  Aula05Matheus
//
//  Created by Student18 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var musicas = [
        Music(id: 1, name:"Shape of you", subtitle: "Ed Sheeran", image: "data:image/jpeg;base64,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"),
        Music(id: 2, name: "Hold On", subtitle: "Justin Bieber", image: "https://upload.wikimedia.org/wikipedia/pt/6/64/Hold_On_-_Justin_Bieber.png"),
        Music (id: 3, name: "Yellow", subtitle: "Coldplay", image: "https://i1.sndcdn.com/artworks-000402447507-zyjqsu-t500x500.jpg"),
        Music (id: 4, name: "Teste 4", subtitle: "Teste 4", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png"),
        Music (id: 5, name: "Teste 5", subtitle: "Teste 5", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png"),
        Music (id: 6, name: "Teste 6", subtitle: "Teste 6", image: "https://pbs.twimg.com/profile_images/1498641868397191170/6qW2XkuI_400x400.png")
    ]
    var pMusic : Music
    @State private var hackaSong: String = "https://hackatruck.com.br/images/2466"
    var body: some View {
        
         NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("hacka")
                    Text("HackaFM")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    
                    HStack{ AsyncImage(
                        url: URL(string: hackaSong),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 40, maxHeight: 40)
                                
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                        Text("HackaSong")
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            
                            
                        
                    }
                   
                    ScrollView{
                        ForEach(musicas) { musica in
                            HStack{
                                AsyncImage(
                                    url: URL(string: musica.image),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: 80, maxHeight: 80)
                                            .multilineTextAlignment(.leading)
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                
                                
                                VStack{
                                    NavigationLink(destination: ViewMusic()){
                                        Text(musica.name)
                                            .foregroundColor(.white)
                                            .font(.title3)
                                    }
                                    Text(musica.subtitle)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                    
                                }
                                Spacer()
                                Image(systemName: "ipodshuffle.gen2")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Spacer()
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 
        ContentView(pMusic: Music(id: 5, name: "Teste", subtitle: "Teste", image: "hacka") )
    }
}
