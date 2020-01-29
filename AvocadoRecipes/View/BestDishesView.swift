//
//  BestDishesView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 28/01/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct BestDishesView: View {
    
    var bestDishes: [BestDish] = bestDishesData
    
    var body: some View {
        HStack {
            VStack(spacing: 0) {
                BestDishRow(bestDish: bestDishes[0])
                HorizontalDivider()
                BestDishRow(bestDish: bestDishes[1])
                HorizontalDivider()
                BestDishRow(bestDish: bestDishes[2])
                HorizontalDivider()
                BestDishRow(bestDish: bestDishes[3])
            }
            VStack {
                VerticalDivider()
                Image(systemName: "heart.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.gray)
                VerticalDivider()
            }
            VStack(spacing: 0) {
                BestDishRow(bestDish: bestDishes[4], onLeft: false)
                HorizontalDivider()
//                Divider()
                BestDishRow(bestDish: bestDishes[5], onLeft: false)
                HorizontalDivider()
                BestDishRow(bestDish: bestDishes[6], onLeft: false)
                HorizontalDivider()
                BestDishRow(bestDish: bestDishes[7], onLeft: false)
            }
        }
        .padding()
        .frame(maxHeight: 200)
    }
}

struct HorizontalDivider: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(height: 1)
    }
}

struct VerticalDivider: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(width: 1)
    }
}

struct BestDishRow: View {
    
    var bestDish: BestDish
    var onLeft = true
    
    var body: some View {
        HStack {
            if !onLeft {
                Text(bestDish.name)
                    .font(.system(.callout, design: .serif))
                    .foregroundColor(Color.gray)
                Spacer()
            }
            Image(bestDish.imageName)
                .resizable()
                .frame(width: 42, height: 42)
//                .aspectRatio(contentMode: .fit)
                
            if onLeft {
                Spacer()
                Text(bestDish.name)
                    .font(.system(.callout, design: .serif))
                    .foregroundColor(Color.gray)
            }
        }
        .padding(5)
//        .frame(height: 40)
    }
    
}

struct BestDish: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
}

struct BestDishesView_Previews: PreviewProvider {
    static var previews: some View {
        BestDishesView()
    }
}
