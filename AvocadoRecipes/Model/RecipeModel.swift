//
//  RecipeModel.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 31/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
