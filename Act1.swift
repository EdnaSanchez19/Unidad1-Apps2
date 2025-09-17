//
//  Act1.swift
//  holamundo
//
//  Created by win603 on 15/08/25.
//

import SwiftUI

struct Act1: View {
    var body: some View {
        VStack(){
                    Text(LocalizedStringKey("Episodio III")).font(.custom("Starjedi", size: 24))
                    Text(LocalizedStringKey("Revenge of the Sith")).font(.custom("Starjedi", size: 24))
            Text(LocalizedStringKey("War! The Republic is crumbling under attacks by the ruthless Sith Lord, Count Dooku.\nThere are heroes on both sides. Evil is everywhere.\n\nIn a stunning move, the fiendish droid leader, General Grievous, has swept into the Republic capital and kidnapped Chancellor Palpatine, leader of the Galactic Senate.\n\nAs the Separatist Droid Army attempts to flee the besieged capital with their valuable hostage, two Jedi Knights lead a desperate mission to rescue the captive Chancellor...")).rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
            .font(.custom("Starjedi", size: 16))
            .padding(.top, -100)
            
            .padding(25)
            

                }
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
        
            
    }
    
}

#Preview {
    Act1()
        .environment(\.locale, .init(identifier: "es"))
            
}
