//
//  ContentView.swift
//  Desafio2
//
//  Created by Turma01-18 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            HStack{
                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:150, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("HackaTruck")
                        .foregroundColor(.red)
                    Text("77 Universidades")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("5 Regióes do Brasil")
                        .foregroundColor(.yellow)
                }
            }
    }
}

#Preview {
    ContentView()
}
