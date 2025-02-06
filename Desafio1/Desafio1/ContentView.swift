//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma01-18 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                Spacer()
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
                    Spacer()
            HStack{
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                Spacer()
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                }
            }
        }
    }

#Preview {
    ContentView()
}
