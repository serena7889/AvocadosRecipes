//
//  RecipeDetailsView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 01/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct RecipeStatsView: View {
    
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            .frame(minWidth: 80)
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Serves: \(recipe.preparation)")
            }
            .frame(minWidth: 80)
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Serves: \(recipe.cooking)")
            }
            .frame(minWidth: 80)
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeStatsView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
