//
//  RipeningStagesView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningCardView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
    }
    
    
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
