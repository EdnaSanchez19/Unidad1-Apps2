//
//  Tarea3.swift
//  Refactor
//
//  Created by Edna Sanchez  on 10/09/25.
//

import SwiftUI

struct Tarea3: View {
    
    @State var dinero: String = "$3600.00"
    @State var ojo: String = "eye.fill"
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            //caja donde va todo el prototipo
            VStack(spacing:0){
                
                ZStack {
                    //bloque morado
                    Rectangle()
                        .fill(Color(hue: 0.75, saturation: 0.87, brightness: 0.725))
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .ignoresSafeArea(edges: .all)
                        
                    
                    //bloque blanco
                    Rectangle()
                        .fill(Color(.white))
                        .frame(width: 350, height: 90)
                        .cornerRadius(20)
                        .overlay(
                            HStack{
                                
                                Text("Haz crecer tu línea de crédito y tus ahorros")
                                    .foregroundColor((Color(hue: 0.741, saturation: 0.501, brightness: 0.831)))
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                                
                                //imagen tres botones
                                Image(systemName: "ellipsis")
                                    .scaleEffect(1.2)
                                    .foregroundColor(Color(hue: 0.75, saturation: 0.87, brightness: 0.725))
                                    .rotationEffect(.degrees(90))
                            }
                        )
                    
                        .padding(.top, 70)
                    
                    //boton de imagen
                    Button(action: {
                        withAnimation() {
                            
                        }
                    }) {
                        Image(systemName: "photo.badge.plus")
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 40, height: 40)
                    .background(Color(hue: 0.741, saturation: 0.501, brightness: 0.831))
                    .foregroundColor(.white)
                    .cornerRadius(500)
                    .padding(.trailing,340)
                    .padding(.bottom,125)
                    
                    HStack(spacing: 20) {
                        //boton de ojo
                        Button(action: {
                            withAnimation() {
                                
                                if ojo == "eye.fill" {
                                    ojo = "eye.slash"
                                    dinero = "   "
                                    
                                } else {
                                    ojo = "eye.fill"
                                    dinero = "$3600.00"
                                }
                                
                            }
                        }) {
                            Image(systemName: ojo)
                                .scaleEffect(1.2)
                                .foregroundColor(Color.white)
                        }
                        //imagen de pregunta
                        Image(systemName: "questionmark.circle")
                            .scaleEffect(1.4)
                            .foregroundColor(Color.white)
                        //imagen de agregar persona
                        Image(systemName: "person.badge.plus")
                            .scaleEffect(1.3)
                            .foregroundColor(Color.white)
                    }
                    
                    .padding(.bottom, 125)
                    .padding(.leading, 250)
                    
                }
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                    HStack{
                        Text("Cuenta Nu")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,230)
                            .padding(.bottom,200)
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(Color.white)
                            .scaleEffect(1)
                            .padding(.bottom,200)
                    }
                    Text(dinero)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,255)
                        .padding(.bottom,140)
                    
                    HStack{
                        
                        VStack {
                            Circle()
                                .overlay(
                                    ZStack{
                                        Image(systemName: "banknote")
                                            .resizable()
                                            .foregroundColor(Color.white)
                                            .scaleEffect(0.5)
                                            .scaledToFit()
                                        Text("Nuevo")
                                            .frame(width: 60, height: 25)
                                            .background(Color(red: 0.332, green: 0.107, blue: 0.526))
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .cornerRadius(5)
                                            .padding(.top, 70)
                                    }
                                )
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.218))
                            
                            Text("Recibir y depositar")
                                .foregroundColor(Color.white)
                        }
                        
                        VStack {
                            Circle()
                                .overlay(
                                    ZStack{
                                        Image(systemName: "banknote")
                                            .resizable()
                                            .foregroundColor(Color.white)
                                            .scaleEffect(0.5)
                                            .scaledToFit()
                                    }
                                )
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.218))
                            
                            Text("Transferir \n")
                                .foregroundColor(Color.white)
                        }
                        
                        VStack(spacing: 0){
                            Circle()
                                .overlay(
                                    ZStack{
                                        Image(systemName: "banknote")
                                            .resizable()
                                            .foregroundColor(Color.white)
                                            .scaleEffect(0.5)
                                            .scaledToFit()
                                        Text("$2,000")
                                            .frame(width: 60, height: 25)
                                            .background(Color(red: 0.332, green: 0.107, blue: 0.526))
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .cornerRadius(5)
                                            .padding(.top, 70)
                                    }
                                )
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.218))
                            
                            Text("Simular préstamo")
                                .foregroundColor(Color.white)
                        }
                        
                        VStack {
                            Circle()
                                .overlay(
                                    ZStack{
                                        Image(systemName: "dollarsign")
                                            .resizable()
                                            .foregroundColor(Color.white)
                                            .scaleEffect(0.5)
                                            .scaledToFit()
                                        Text("$7,981")
                                            .frame(width: 60, height: 25)
                                            .background(Color(red: 0.332, green: 0.107, blue: 0.526))
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .cornerRadius(5)
                                            .padding(.top, 70)
                                    }
                                )
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.218))
                            
                            Text("Disponer de saldo")
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    .padding(.top, 90)
                }
                Divider()
                ZStack(){
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .overlay(
                            HStack(spacing: 180){
                                Text("Tarjeta de crédito")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "greaterthan")
                                    .foregroundColor(Color.white)
                                    .scaleEffect(1)
                            }
                            
                        )
                }
                Divider()
                ZStack() {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Saldo actual")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(dinero)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                Text("Fecha de corte: 16 SEP")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text("Límite disponible: $7,981.36")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                                .frame(maxWidth: .infinity)
                                .padding(.trailing, 200)
                        )
                }
                Divider()
                ZStack //todo
{
                        Rectangle()
                            .frame(height: 500)
                            .padding(.bottom, 150)
                                Text("Descubre más")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .padding(.bottom, 550)
                                .padding(.trailing, 200)
                        
                        
                        ScrollView(.horizontal) {
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(red: 0.2, green: 0.2, blue: 0.2))
                                    .frame(width: 300, height: 300)
                                    .padding(.bottom,150)
                                    .padding(.leading, 20)
                                    .overlay(
                                        ZStack() {
                                            Image("nu1")
                                                .resizable()
                                                .frame(width: 300,height: 150)
                                                .padding(.leading, 20)
                                                .padding(.bottom, 350)
                                                .cornerRadius(15)
                                            
                                            Text("Prueba la Billetera de Google™")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                                .fontWeight(.semibold)
                                                
                                                .padding(.horizontal, 20)
                                                .padding(.bottom, 140)
                                                .padding(.leading, 5)
                                             
                                            
                                            
                                            Text("Agrega tu tarjeta de manera rápida y segura.")
                                                .foregroundColor(.gray)
                                                .font(.subheadline)
                                                .padding(.leading, 5)
                                                .padding(.horizontal, 20)
                                                .padding(.bottom, 70)
                                            
                                            
                                            Text("Saber más")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .medium))
                                                    .padding(.horizontal, 25)
                                                    .padding(.vertical, 12)
                                                    .background(Color.purple)
                                                    .cornerRadius(25)
                                                    .padding(.trailing, 120)
                                                    .padding(.top, 50)
                                            
    
                                        }
                                    )
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(red: 0.2, green: 0.2, blue: 0.2))
                                    .frame(width: 300, height: 300)
                                    .padding(.bottom,150)
                                    .padding(.leading, 20)
                                    .overlay(
                                        ZStack() {
                                            Image("nu2")
                                                .resizable()
                                                .frame(width: 300,height: 150)
                                                .padding(.leading, 20)
                                                .padding(.bottom, 350)
                                                .cornerRadius(15)
                                            
                                            Text("Prueba la Billetera de Google™")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                                .fontWeight(.semibold)
                                                
                                                .padding(.horizontal, 20)
                                                .padding(.bottom, 140)
                                                .padding(.leading, 5)
                                             
                                            
                                            
                                            Text("Agrega tu tarjeta de manera rápida y segura.")
                                                .foregroundColor(.gray)
                                                .font(.subheadline)
                                                .padding(.leading, 5)
                                                .padding(.horizontal, 20)
                                                .padding(.bottom, 70)
                                            
                                            
                                            Text("Saber más")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .medium))
                                                    .padding(.horizontal, 25)
                                                    .padding(.vertical, 12)
                                                    .background(Color.purple)
                                                    .cornerRadius(25)
                                                    .padding(.trailing, 120)
                                                    .padding(.top, 50)
                                            
    
                                        }
                                    )
                            }
                        
            }
}
                    
//                    Rectangle()
//                        .fill(Color(red: 0.2, green: 0.2, blue: 0.2))
//                        .frame(width: 280, height: 200)
//                        .overlay(
//                            VStack(alignment: .leading, spacing: 0) {
//                                HStack {
//                                    Spacer()
//                                    Image(systemName: "person.circle")
//                                        .foregroundColor(.white)
//                                        .font(.title2)
//                                }
//                                .padding(.top, 20)
//                                .padding(.trailing, 20)
//                                
//                                Spacer()
//                                
//                                VStack(alignment: .leading, spacing: 8) {
//                                    Text("La era Nu se acerca")
//                                        .foregroundColor(.white)
//                                        .font(.headline)
//                                        .fontWeight(.semibold)
//                                    
//                                    Text("Invita a alguien y obtén una Cuenta Nu completamente gratuita.")
//                                        .foregroundColor(.gray)
//                                        .font(.subheadline)
//                                        .multilineTextAlignment(.leading)
//                                }
//                                .padding(.horizontal, 20)
//                                .padding(.bottom, 15)
//                                
//                                HStack {
//                                        Text("¡Hazlo ahora!")
//                                            .foregroundColor(.white)
//                                            .font(.system(size: 14, weight: .medium))
//                                            .padding(.horizontal, 25)
//                                            .padding(.vertical, 12)
//                                            .background(Color.purple)
//                                            .cornerRadius(25)
//                                }
//                                
//                            }
//                        )
                }
            }
            
        }
    }



#Preview {
    Tarea3()
}
