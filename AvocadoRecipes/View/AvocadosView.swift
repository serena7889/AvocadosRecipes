//
//  AvocadosView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct AvocadosView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
    .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
        .previewDevice("iPhone 11 Pro")
        .environment(\.colorScheme, .dark)
    }
}
