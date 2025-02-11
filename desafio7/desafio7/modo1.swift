//
//  modo1.swift
//  desafio7
//
//  Created by Turma01-18 on 11/02/25.
//

import SwiftUI

struct modo1: View {
    @State private var color: Color = .hackapurple
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 340, height: 190)
                .foregroundColor(.pink)
            HStack{
                Text("Nome: Lucas \nSobrenome: Dornelles")
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    modo1()
}
