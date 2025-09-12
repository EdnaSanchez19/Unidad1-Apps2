//
//  Actividad2.swift
//  Refactor
//
//  Created by Edna Sanchez  on 12/09/25.
//

import SwiftUI

struct Actividad2: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) { //contenido
        
            ZStack {
                
                HStack {
                    
                    VStack {
                        Image("demonslayer")
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 380, height: 540)
                        HStack {
                            Text("TBC")
                                .frame(width: 50, height: 30)
                                .background(Color(hue: 1.0, saturation: 0.004, brightness: 0.895))
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                                .cornerRadius(3)
                            Text("155 min")
                        }
                        Text("Demon Slayer: Kimetsu no Yaiba Castillo Infinito")
                            .font(.title)
                            .fontWeight(.bold)
                            .truncationMode(.middle)
                            .lineLimit(2)
                            .frame(width:300)
                        HStack {
                            Text("Ver detalle")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            Image(systemName: "info.circle")
                                .foregroundColor(.blue)
                                
                        }
                    }
                    
                    VStack {
                        Image("armand")
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 380, height: 540)
                        HStack {
                            Text("B")
                                .frame(width: 30, height: 30)
                                .background(Color.yellow)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .cornerRadius(3)
                            Text("116 min")
                        }
                        Text("Armand, Una Acusación Peligrosa")
                            .font(.title)
                            .fontWeight(.bold)
                            .truncationMode(.middle)
                        
                        HStack {
                            Text("Ver detalle")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            Image(systemName: "info.circle")
                                .foregroundColor(.blue)
                                
                        }
                    }
                    
                }
                
            }
            .frame(width: 760, height: 700)
            
            
        }
    }
}

#Preview {
    Actividad2()
}
