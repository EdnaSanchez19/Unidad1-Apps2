//
//  Tarea2.swift
//  Refactor
//
//  Created by Edna Sanchez  on 04/09/25.
//

import SwiftUI

struct Tarea2: View {
    var body: some View {
        HStack {
            Text("Bandera")
                .foregroundColor(Color(hue: 0.146, saturation: 0.97, brightness: 1.0))
            Text("De")
                .foregroundColor(Color(hue: 0.655, saturation: 0.805, brightness: 0.966))
            Text("Colombia")
                .foregroundColor(Color(hue: 1.0, saturation: 0.591, brightness: 0.985))
        }
       ZStack
            {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 180, height: 100)
                    .padding(20)
          
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 180, height: 40)
                    .padding()
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 180, height: 30)
                    .padding(.top, 70)
            }
        HStack {
            Text("Circulos")
                .foregroundColor(Color(hue: 0.851, saturation: 0.468, brightness: 0.994))
            Text("De")
                .foregroundColor(Color(hue: 0.689, saturation: 0.325, brightness: 0.971))
            Text("Colores")
                .foregroundColor(Color(hue: 0.56, saturation: 0.487, brightness: 0.967))
        }
        ZStack{
            Circle()
                .fill(Color(hue: 0.875, saturation: 0.446, brightness: 0.675))
                .frame(width: 200, height: 150)
                .padding(20)
            
            Circle()
                .fill(Color(hue: 0.875, saturation: 0.289, brightness: 0.696))
                .frame(width: 150, height: 100)
                .padding(20)
            
            Circle()
                .fill(Color(hue: 0.875, saturation: 0.158, brightness: 0.785))
                .frame(width: 100, height: 50)
                .padding(20)
            
            Circle()
                .fill(Color(hue: 0.875, saturation: 0.08, brightness: 0.861))
                .frame(width: 50, height: 25)
                .padding(20)
        }
        HStack {
            Text("Moneda")
                .foregroundColor(Color(hue: 1.0, saturation: 0.956, brightness: 0.95))
            Text("De")
                .foregroundColor(Color(hue: 0.989, saturation: 0.726, brightness: 0.982))
            Text("China")
                .foregroundColor(Color(hue: 0.95, saturation: 0.487, brightness: 0.967))
        }
        ZStack{
            Circle()
                .fill(Color(hue: 0.131, saturation: 0.965, brightness: 0.757))
                .frame(width: 200, height: 150)
                .padding(20)
            
            Rectangle()
                .fill(Color.white)
                .frame(width: 50, height: 50)
                .padding()
            
            
        }
        
    }
}

#Preview {
    Tarea2()
}
