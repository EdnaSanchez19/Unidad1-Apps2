//
//  Tarea1.swift
//  Refactor
//
//  Created by Edna Sanchez  on 29/08/25.
//

import SwiftUI

struct actividadtextos: View {
    var body: some View {
        HStack{
            Text("Amarillo")
                .foregroundColor(Color(hue: 0.131, saturation: 0.369, brightness: 1.0))
            Text("Azul ")
                .foregroundColor(Color(hue: 0.607, saturation: 0.385, brightness: 1.0))
            Text("Naranja")
                .foregroundColor(Color(hue: 0.07, saturation: 0.481, brightness: 1.0))
        }
        HStack{
            Text("Negro")
                .frame(width: 100, height: 50)
                .background(Color(hue: 0.58, saturation: 0.321, brightness: 0.001))
                .foregroundColor(Color(hue: 0.585, saturation: 0.329, brightness: 0.995))
                .frame(maxWidth: .infinity)
            Text("Rojo")
                .frame(width: 100)
                .background(Color(hue: 0.984, saturation: 0.254, brightness: 0.968))
                .foregroundColor(Color(hue: 0.69, saturation: 0.0, brightness: 0.985))
                .cornerRadius(15)
                .frame(maxWidth: .infinity)
        }
        .padding(20)
        Text("Verde")
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(Color(hue: 0.239, saturation: 0.217, brightness: 0.991))
            .foregroundColor(Color(hue: 0.169, saturation: 0.299, brightness: 0.001))
        
        VStack{
            Text("Morado")
                .padding([.leading, .bottom, .trailing])
                .frame(maxWidth: 100, maxHeight: 50, alignment: .leading)
                .background(LinearGradient(gradient:Gradient(colors:[.red,.yellow,.purple,]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .border(Color(.black))
                .frame(alignment: .topLeading)
                .padding(.trailing, 305)
        }
        VStack{
            Text("Prueba de Colores")
                .foregroundColor(Color(hue: 0.673, saturation: 0.942, brightness: 0.877))
                .background(Color(hue: 0.139, saturation: 0.224, brightness: 0.992))
                .multilineTextAlignment(.center)
                .shadow(radius: 10)
                .padding([.top, .leading], 150)
                .rotationEffect(.degrees(50))
        }
        VStack{
            Text("Naranja")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding()
                .foregroundColor(Color(hue: 0.092, saturation: 0.555, brightness: 1.0))
                .bold()
                .underline()
                
                
        }
        
    }
}

#Preview {
    actividadtextos()
}
