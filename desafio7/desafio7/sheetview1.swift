//
//  sheetview.swift
//  desafio7
//
//  Created by Turma01-18 on 11/02/25.
//

import SwiftUI

struct sheetview: View {
    @Environment(\.dismiss) var dismiss
    @State private var color: Color = .hackapurple
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            
            Button("Nome: Lucas \nSobrenome: Dornelles"){
                dismiss()
            }   .frame(width: 300)
                .foregroundColor(.white)
                .padding()
                .background(Color.pink)
                .cornerRadius(30)
        }
    }
}

#Preview {
    sheetview()
}
