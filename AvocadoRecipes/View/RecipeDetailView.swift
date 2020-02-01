//
//  AvocadoRecipeDetailView.swift
//  AvocadoRecipes
//
//  Created by Serena Lambert on 01/02/2020.
//  Copyright © 2020 Serena Lambert. All rights reserved.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {

                Image(recipe.imageName)
                    .resizable()
                    .scaledToFit()

                Group {

                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)

                    // RATING
                    RecipeRatingView(recipe: recipe)

                    // COOKING
                    RecipeDetailsView(recipe: recipe)

                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    VStack(alignment: .center, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredients in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ingredients)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }

                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    ForEach(recipe.instructions, id: \.self) { instruction in
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))

                            Text(instruction)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                            
                        }
                    }


                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)

            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // ACTION
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.8)
                            .scaleEffect(self.pulsate ? 1.1 : 0.9)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.horizontal, 22)
                }
                Spacer()
            }
        )
        .onAppear {
            self.pulsate.toggle()
        }
    }
}

struct AvocadoRecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
