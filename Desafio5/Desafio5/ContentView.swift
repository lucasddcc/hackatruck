//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma01-18 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Float=0
    @State private var tempo: Int=0
    @State private var resultado: Float=0
    @State private var img: String = "Image"
    @State private var color: Color = .gray
    
    var body: some View {
        
        ZStack{
            color.ignoresSafeArea()
        HStack {

            VStack(alignment: .center) {
                Text("Digite a distancia (km)")
                    
                TextField("", value: $distancia, format: .number)
                    .frame(width: 200, height: 40)
                    .background()
                    .cornerRadius(20)
                Text("Digite o tempo (h)")
                TextField("", value: $tempo, format: .number)
                    .frame(width: 200, height: 40)
                    .background()
                    .cornerRadius(20)
                Button(action: {
                    resultado = distancia / Float(tempo)
                    if resultado >= 0 && resultado < 10{
                        color = .tartaruga
                        img = "tartaruga"
                    } else if resultado >= 10 && resultado < 30{
                        color = .elefante
                        img = "elefante"
                    } else if resultado >= 30 && resultado < 70{
                        color = .avestruz
                        img = "avestruz"
                    } else if resultado >= 70 && resultado < 90{
                        color = .leao
                        img = "leao"
                    } else{
                        color = .guepardo
                        img = "guepardo"
                    }
                                
                }, label: {
                    Text("Calcular")
                        .frame(maxWidth: 100)
                        .background(Color(.black))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .frame(width: 100, height: 100)
                })
                
                .foregroundColor(.black)
                Text(" \(resultado) Km/h")
                Spacer()
                    Image(img)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 340, height: 190)
                        .foregroundColor(.black)
                    
                    VStack{
                        HStack{
                            Text("TARTARUGA (0 - 9.9 KM/H)")
                            Spacer()
                            Circle()
                                .frame(width: 20, height: 20)
                            .foregroundColor(.tartaruga)}
                            .foregroundStyle(.white)
                        HStack{
                            Text("ELEFANTE (10 - 29.9 KM/H")
                                .foregroundStyle(.white)
                            Spacer()
                            Circle()
                                .frame(width: 20, height: 20)
                            .foregroundColor(.elefante)}
                        HStack{
                            Text("AVESTRUZ (30 - 69.9 KM/H")
                                .foregroundStyle(.white)
                            Spacer()
                            Circle()
                                .frame(width: 20, height: 20)
                            .foregroundColor(.avestruz)}
                        HStack{
                            Text("LEAO (70 - 89.9 KM/H")
                                .foregroundStyle(.white)
                            Spacer()
                            Circle()
                                .frame(width: 20, height: 20)
                            .foregroundColor(.leao)}
                        HStack{
                            Text("GUEPARDO (90 - 130 KM/H")
                                .foregroundStyle(.white)
                            Spacer()
                            Circle()
                                .frame(width: 20, height: 20)
                            .foregroundColor(.guepardo)}
                        }  .frame(width: 300, height: 150)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
