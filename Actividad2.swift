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
                        ZStack {
                            
                            Image("demonslayer")
                                .resizable()
                                .cornerRadius(20)
                                .frame(width: 380, height: 540)
                            Text("Preventa")
                                .frame(width: 100)
                                .bold(true)
                                .padding()
                                .background(Color(red: 0.218, green: 0.787, blue: 0.777))
                                .cornerRadius(20)
                                .padding(.top, 480)
                                .padding(.leading, 240)
                            
                        }
                        
                        HStack {
                            Text("TBC")
                                .frame(width: 50, height: 30)
                                .background(Color(hue: 1.0, saturation: 0.004, brightness: 0.895))
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                                .cornerRadius(3)
                            Text("155 min")
                        }
                        .padding(.trailing, 220)
                        
                        Text("Demon Slayer: Kimetsu no Yaiba Castillo Infinito")
                            .font(.title)
                            .fontWeight(.bold)
                            .truncationMode(.middle)
                            .lineLimit(2)
                            .frame(width: 300)
                        HStack {
                            Text("Ver detalle")
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            Image(systemName: "info.circle")
                                .foregroundColor(.blue)
                        }
                        .padding(.trailing, 220)
                    }
                    
                    VStack {
                        
                        ZStack {
                            Image("armand")
                                .resizable()
                                .cornerRadius(20)
                                .frame(width: 380, height: 540)
                            Text("Estreno")
                                .frame(width: 100)
                                .bold(true)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                                .padding(.top, 480)
                                .padding(.leading, 240)
                        }
                        
                        HStack {
                            Text("B")
                                .frame(width: 30, height: 30)
                                .background(Color.yellow)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .cornerRadius(3)
                            Text("116 min")
                        }
                        .padding(.trailing, 220)
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
                        .padding(.trailing, 220)
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
