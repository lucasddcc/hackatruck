//
//  modo2.swift
//  desafio7
//
//  Created by Turma01-18 on 11/02/25.
//

import SwiftUI

struct modo2: View {
    @State private var color: Color = .hackapurple
    @State private var nome: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                color.ignoresSafeArea()
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 340, height: 190)
                    .foregroundColor(.pink)
                VStack{
                    TextField("", text: $nome)
                        .frame(width: 200, height: 40)
                        .foregroundColor(.white)
                    Text("Bem-Vindo, \(nome)")
                        .padding()
                        .foregroundColor(.white)
                        
                    NavigationLink(destination: modo3(nome: nome)){
                        Text("Acessar Tela")
                            .foregroundColor(.white)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(width: 200, height: 50)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

#Preview {
    modo2()
}
