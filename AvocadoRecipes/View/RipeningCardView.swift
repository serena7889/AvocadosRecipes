//
//  RipeningCardView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 02/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct RipeningCardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var slideInAnimation: Bool = false
    var ripening: Ripening
    
    var body: some View {
        VStack {
            Image(ripening.imageName)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .zIndex(1)
                .background(
                    Circle()
                        .foregroundColor(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .foregroundColor(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .offset(y: slideInAnimation ? 55 : -55)
                .animation(Animation.easeInOut(duration: 1.2))
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                Spacer()
                
                // TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                
                // DESCRIPTION
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                
                Spacer()
                
                // RIPENESS
                Text(ripening.ripeness)
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .frame(width: 160)
                
                Spacer()
                
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 465, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
            
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.slideInAnimation.toggle()
        }
    }
    
}

struct RipeningCardView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningCardView(ripening: ripeningData[2])
    }
}
