//
//  RecipeModel.swift
//  Recipe
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import Foundation

struct RecipeModel: Identifiable {
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeImageURL: String
}
