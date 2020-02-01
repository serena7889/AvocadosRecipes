//
//  FactModel.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 31/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var imageName: String
    var content: String
}
