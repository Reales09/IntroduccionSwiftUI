//
//  ContentView.swift
//  HolaSwift
//
//  Created by Reales Rectoro Myles Clarence on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    let botonText = "Mi boton"
    @State private var show = false;
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.green)
                .font(.largeTitle)

        }
        
        .padding()
        Button(botonText) {
            show = true;
            print("Hola desde consola")
        }.alert(isPresented: $show, content: {
            Alert(title: Text("Titulo"), message: Text("El mensaje"), dismissButton: .default(Text("Aceptar")))
        })
    }
}

#Preview {
    ContentView()
    
}
