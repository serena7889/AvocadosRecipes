//
//  SettingsView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = true
    var details: [[String]] = [
        ["Product", "Avocado Recipes"],
        ["Compatability", "iPhone & iPad"],
        ["Developer", "SLAM DEV"],
        ["Designer", "Serena Lambert"],
        ["Website", "slamdev.com"],
        ["Version", "1.0.0"]
    ]
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - SECTION 1
                Section(header: Text("General Settings")) {
                    
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                    
                }
                
                // MARK: - SECTION 2
                Section(header: Text("Application")) {
                    ForEach(details, id: \.self) { detail in
                         HStack {
                             Text(detail[0])
                                .foregroundColor(.gray)
                             Spacer()
                             Text(detail[1])
                        }
                        
                    }
                }
                
            }
            
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
