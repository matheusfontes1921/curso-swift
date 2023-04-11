//
//  SecondView.swift
//  Aula04Matheus
//
//  Created by Student18 on 11/04/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color(.blue)
            VStack{
                Text("Blue")
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
