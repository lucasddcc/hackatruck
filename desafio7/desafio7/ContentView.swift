//
//  ContentView.swift
//  desafio7
//
//  Created by Turma01-18 on 24/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var color: Color = .hackapurple
    @State private var shouldPresentSheet = false
    var body: some View {
        
        NavigationStack{
                ZStack{
                    color.ignoresSafeArea()
                    VStack{
                        
                        NavigationLink(destination: modo1()){
                            Text("Modo 1")
                                .foregroundColor(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .frame(width: 300, height: 70)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                        NavigationLink(destination: modo2()){
                            Text("Modo 2")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(width: 300, height: 70)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                        Button("Modo 3"){
                            shouldPresentSheet.toggle()
                        }
                        .sheet(isPresented: $shouldPresentSheet){
                            sheetview()
                        }
                                .foregroundColor(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .frame(width: 300, height: 70)
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
