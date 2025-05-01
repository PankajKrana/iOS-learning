//
//  ContentView.swift
//  Recipe
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import SwiftUI

struct RecipeView: View {
    var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationStack {
            
            List(self.recipeViewModel.recipeModels) { item
                in
                
                NavigationLink(
                    destination: {
                        ShowRecipeView(
                            theRecipe: item.recipe,
                            imageName: item.recipeImage,
                            recipeURL: item.recipeImageURL)
                    },
                    label: {
                    ListItemView(
                        name: item.name,
                        caloriesPer100Gram: item.caloriesPer100Grams,
                        recipeImage: item.recipeImage)
                })
                
            }.navigationTitle("Recipes")
        }
    }
}

#Preview {
    RecipeView()
}
