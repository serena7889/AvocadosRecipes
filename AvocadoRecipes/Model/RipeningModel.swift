//
//  RipeningModel.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 02/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var imageName: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
