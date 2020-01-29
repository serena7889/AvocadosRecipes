//
//  AppView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
            })
            RecipesView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Avocados")
            })
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
            })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
            })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .environment(\.colorScheme, .dark)
    }
}
