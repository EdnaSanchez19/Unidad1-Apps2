//
//  Actividad3.swift
//  Refactor
//
//  Created by Edna Sanchez  on 13/09/25.
//

import SwiftUI

struct Actividad3: View {
    @State var pantallapreguntas = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("cartas")
                    .resizable()  //  cambiar tamaño de la imagen
                    .scaledToFill()  // imagen cubra toda la pantalla
                    .ignoresSafeArea(edges: .all)
                
                //preguntaa principal
                Text("Responde las siguiente pregunta para saber tu casa ⚡️🧙‍♂️🦉")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                    .foregroundStyle(Color(red: 0.297, green: 0.048, blue: 0.046))
                    .background(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .padding(.bottom, 500)
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .bold()
                
                VStack {
                    Button (action: {
                        pantallapreguntas = true
                        withAnimation() {
                            
                        }
                    }) {
                       Rectangle()
                        .frame(width: 300, height: 80)
                        .foregroundColor(Color(red: 0.483, green: 0.092, blue: 0.072))
                        .cornerRadius(50)
                        .overlay (
                                Text("COMENZAR")
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 30))
                                    .fontDesign(.serif)
                            )
                    }
                    .foregroundStyle(Color(red: 0.711, green: 0.681, blue: 0.643))
                    //nos lleva a la pagina secondView
                    .navigationDestination(isPresented: $pantallapreguntas) {
                        SecondView()
                    }
                }
            }
        }
    }
}

struct SecondView: View {
    @State private var preguntas = ["¿Qué valoras más en un amigo?","¿Cuál de estas actividades prefieres?","¿Cómo reaccionas ante un problema difícil?","Si pudieras elegir un animal que te represente, ¿cuál sería?","¿Cuál es tu mayor motivación en la vida?"]
    
    @State private var respuestasG = ["Valentía y coraje","Aventuras y retos emocionantes","Enfrento el problema con valentía","León","Ser valiente y enfrentarte a cualquier desafío"]
    @State private var respuestasS = ["Astucia y ambición","Planear estrategias y alcanzar tus metas","Busco formas de usar la situación a mi favor","Serpiente","Conseguir poder, éxito y reconocimiento"]
    @State private var respuestasH = ["Lealtad y amabilidad","Ayudar a los demás o hacer trabajo en equipo","Pido ayuda o colaboro con otros para solucionarlo","Tejón","Ser justo, leal y ayudar a los demás"]
    @State private var respuestasR = ["Inteligencia y creatividad","Leer libros o aprender algo nuevo","Analizo la situación y busco soluciones inteligentes","Águila","Aprender, descubrir cosas nuevas y usar tu ingenio"]
    
    @State private var puntosG: Int = 0
    @State private var puntosS: Int = 0
    @State private var puntosH: Int = 0
    @State private var puntosR: Int = 0
    
    @State private var pre: Int = 0
    @State private var res: Int = 0
    
    @State var griffyndor = false
    @State var slytherin = false
    @State var hufflepuff = false
    @State var ravenclaw = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("gringots")
                    .resizable()  //  cambiar tamaño de la imagen
                    .scaledToFill()  // imagen cubra toda la pantalla
                    .ignoresSafeArea(edges: .all)
                    .navigationTitle("Preguntas") //nombre de la pagina
                
                Rectangle()
                    .frame(width: 330, height: 85)
                    .foregroundColor(Color(red: 0.109, green: 0.061, blue: 0.057))
                    .cornerRadius(10)
                    .overlay (
                        //preguntas empieza la posicion 0 y muestra la pregunta de ese arreglo
                        Text(preguntas[pre])
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                            .font(.system(size: 30))
                            .fontDesign(.serif)
                    )
                    .padding(.bottom, 600)
                
                VStack{
                    //primer boton respuesta gryffindor
                    Button (action: {
                        
                        if pre < preguntas.count - 1 {
                            pre += 1
                            res += 1
                        }
                        puntosG += 1
                        conteo()
                    }) {
                        Rectangle()
                            .frame(width: 300, height: 80)
                            .foregroundColor(Color(red: 0.108, green: 0.065, blue: 0.057))
                            .cornerRadius(50)
                            .overlay (
                                Text(respuestasG[res])
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 20))
                                    .fontDesign(.serif)
                            )
                    }
                    
                    //segundo boton respuesta hufflepuff
                    Button (action: {
                        if pre < preguntas.count - 1 {
                            pre += 1
                            res += 1
                        }
                        puntosH += 1
                        conteo()
                    }) {
                        Rectangle()
                            .frame(width: 300, height: 80)
                            .foregroundColor(Color(red: 0.108, green: 0.065, blue: 0.057))
                            .cornerRadius(50)
                            .overlay (
                                Text(respuestasH[res])
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 20))
                                    .fontDesign(.serif)
                            )
                    }
                    
                    //tercer boton respuesta ravenclaw
                    Button (action: {
                        if pre < preguntas.count - 1 {
                            pre += 1
                            res += 1
                        }
                        puntosR += 1
                        conteo()
                    }) {
                        Rectangle()
                            .frame(width: 300, height: 80)
                            .foregroundColor(Color(red: 0.108, green: 0.065, blue: 0.057))
                            .cornerRadius(50)
                            .overlay (
                                Text(respuestasR[res])
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 20))
                                    .fontDesign(.serif)
                            )
                    }
                    
                    //cuarto boton respuesta slytherin
                    Button (action: {
                        if pre < preguntas.count - 1 {
                            pre += 1
                            res += 1
                        }
                        puntosS += 1
                        conteo()
                    }) {
                        Rectangle()
                            .frame(width: 300, height: 80)
                            .foregroundColor(Color(red: 0.108, green: 0.065, blue: 0.057))
                            .cornerRadius(50)
                            .overlay (
                                Text(respuestasS[res])
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 20))
                                    .fontDesign(.serif)
                            )
                    }
                }
                .padding(.top, 100)
            }
            .navigationDestination(isPresented: $griffyndor) {
                griffyndorview()
            }
            .navigationDestination(isPresented: $slytherin) {
                slytherinview()
            }
            .navigationDestination(isPresented: $hufflepuff) {
                hufflepuffview()
            }
            .navigationDestination(isPresented: $ravenclaw) {
                ravenclawview()
            }
        }
    }
    
    func conteo() {
        //al llegar a las 4 o 5 puntos empieza a correr el ciclo de comparacion
        // el count es para contar cuantos puntos hay en pre y el -1 para empezar el ciclo
        if pre >= preguntas.count - 1 {
            //aqui mazscore compara los puntos entre todas las variables
            let maxScore = max(puntosG, puntosS, puntosH, puntosR)
            
            if puntosG == maxScore {
                //si el que mayor puntos tiene es griffyndor cambia a true para mandar llamar el navigation
                griffyndor = true
            } else if puntosS == maxScore {
                slytherin = true
            } else if puntosH == maxScore {
                hufflepuff = true
            } else {
                ravenclaw = true
            }
        }
    }
}

struct griffyndorview: View {
    @State private var regresar: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("gryffindor")
                    .resizable()
                    .padding(.trailing,80)
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                    
                
                Text("Felicidades ⚡️🦁")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                    .foregroundStyle(Color(red: 0.297, green: 0.048, blue: 0.046))
                    .background(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .bold()
                    .padding(.top,100)
                
                VStack {
                    Button (action: {
                        regresar = true
                        
                        withAnimation() {
                            
                        }
                    }) {
                       Rectangle()
                        .frame(width: 300, height: 80)
                        .foregroundColor(Color(red: 0.483, green: 0.092, blue: 0.072))
                        .cornerRadius(50)
                        .overlay (
                                Text("REGRESAR")
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 30))
                                    .fontDesign(.serif)
                            )
                    }
                    .padding(.top,300)
                    .foregroundStyle(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .navigationDestination(isPresented: $regresar) {
                        Actividad3()
                    }
                }
            }
        }
    }
}

struct slytherinview: View {
    @State private var regresar: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("slytherin")
                    .resizable()
                    .padding(.trailing,90)
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                
                Text("Felicidades 🐍")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                    .foregroundStyle(Color(red: 0.297, green: 0.048, blue: 0.046))
                    .background(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .bold()
                    .padding(.top,150)
                    .padding(.leading,27)
                
                VStack {
                    Button (action: {
                        regresar = true
                        
                        withAnimation() {
                            
                        }
                    }) {
                       Rectangle()
                        .frame(width: 300, height: 80)
                        .foregroundColor(Color(red: 0.483, green: 0.092, blue: 0.072))
                        .cornerRadius(50)
                        .overlay (
                                Text("REGRESAR")
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 30))
                                    .fontDesign(.serif)
                            )
                    }
                    .padding(.top,300)
                    .foregroundStyle(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .navigationDestination(isPresented: $regresar) {
                        Actividad3()
                    }
                }
            }
        }
    }
}

struct hufflepuffview: View {
    @State private var regresar: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("hufflepuf")
                    .resizable()
                    .padding(.trailing,80)
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                
                Text("Felicidades 🦡")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                    .foregroundStyle(Color(red: 0.297, green: 0.048, blue: 0.046))
                    .background(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .bold()
                    .padding(.top,100)
                
                VStack {
                    Button (action: {
                        regresar = true
                        
                        withAnimation() {
                            
                        }
                    }) {
                       Rectangle()
                        .frame(width: 300, height: 80)
                        .foregroundColor(Color(red: 0.483, green: 0.092, blue: 0.072))
                        .cornerRadius(50)
                        .overlay (
                                Text("REGRESAR")
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 30))
                                    .fontDesign(.serif)
                            )
                    }
                    .padding(.top,300)
                    .foregroundStyle(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .navigationDestination(isPresented: $regresar) {
                        Actividad3()
                    }
                }
            }
        }
    }
}

struct ravenclawview: View {
    @State private var regresar: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("ravenclaw")
                    .resizable()
                    .padding(.trailing,80)
                    .scaledToFill()
                    .ignoresSafeArea(edges: .all)
                
                Text("Felicidades 🦅")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                    .foregroundStyle(Color(red: 0.297, green: 0.048, blue: 0.046))
                    .background(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .font(.system(size: 30))
                    .fontDesign(.serif)
                    .bold()
                    .padding(.top,100)
                    .padding(.horizontal,40)
               
                VStack {
                    Button (action: {
                        regresar = true
                        
                        withAnimation() {
                            
                        }
                    }) {
                       Rectangle()
                        .frame(width: 300, height: 80)
                        .foregroundColor(Color(red: 0.483, green: 0.092, blue: 0.072))
                        .cornerRadius(50)
                        .overlay (
                                Text("REGRESAR")
                                    .foregroundStyle(Color(red: 0.696, green: 0.662, blue: 0.619))
                                    .font(.system(size: 30))
                                    .fontDesign(.serif)
                            )
                    }
                    .padding(.top,300)
                    .foregroundStyle(Color(red: 0.711, green: 0.681, blue: 0.643))
                    .navigationDestination(isPresented: $regresar) {
                        Actividad3()
                    }
                }
                      
            }
        }
    }
}

#Preview {
    Actividad3()
}
