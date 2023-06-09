//
//  ViewMusic.swift
//  Aula05Matheus
//
//  Created by Student18 on 12/04/23.
//

import SwiftUI

struct ViewMusic: View {
    var body: some View {
        Text("Hello, World!")
                ZStack{
                    LinearGradient(colors: [.blue,.black], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
        
                        Spacer()
                    VStack{
        
                    
                        Spacer()
                        Image("hacka")
                        Text("Teste 1")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        Spacer()
                        
                        HStack{
                            Spacer()
                            Image(systemName: "shuffle")
                                .foregroundColor(.white)
                                .font(Font.system(.largeTitle))
                                .padding(.horizontal,10.0)
                            Image(systemName: "arrowshape.turn.up.backward.fill")
                                .foregroundColor(.white)
                                .font(Font.system(.largeTitle))
                                .padding(.horizontal,10.0)
                            Image(systemName: "play.fill")
                                .foregroundColor(.white)
                                .font(Font.system(.largeTitle))
                                .padding(.horizontal,10.0)
                            Image(systemName: "arrowshape.turn.up.forward.fill")
                                .foregroundColor(.white)
                                .font(Font.system(.largeTitle))
                            .padding(.horizontal,10.0)
                            Image(systemName: "repeat")
                                .foregroundColor(.white)
                                .font(Font.system(.largeTitle))
                            .padding(.horizontal,10.0)
                        
                        Spacer()
                    }
                        Spacer()
                }
            }
    }
    
    struct ViewMusic_Previews: PreviewProvider {
        static var previews: some View {
            ViewMusic()
        }
    }
}
