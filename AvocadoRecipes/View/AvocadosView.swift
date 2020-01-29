//
//  AvocadosView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulsatingAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            AvocadosImage(pulsatingAnimation: $pulsatingAnimation)
            AvocadosText()
            Spacer()
        }
        .background(
            AvocadosBackground().onAppear { self.pulsatingAnimation.toggle() }
        )
    }
}

struct AvocadosImage: View {
    
    @Binding var pulsatingAnimation: Bool
    
    var body: some View {
        Image("avocado")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 240, height: 240, alignment: .center)
            .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
            .scaleEffect(pulsatingAnimation ? 1 : 0.9)
            .animation(Animation.easeInOut(duration: 1.0).repeatForever())
    }
    
}

struct AvocadosText: View {
    
    var body: some View {
        VStack {
            
            Text("Avocados".uppercased())
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
            
            Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
        }
        .padding()
    }
}

struct AvocadosBackground: View {
    var body: some View {
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        .edgesIgnoringSafeArea(.all)
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
        .previewDevice("iPhone 11 Pro")
//        .environment(\.colorScheme, .dark)
    }
}
