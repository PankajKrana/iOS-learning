//
//  RecipeViewModel.swift
//  Recipe
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import Foundation
import Observation


@Observable class RecipeViewModel {
    var recipeModels: [RecipeModel]  = []
    // Initialize the Model
    init() {
        recipeModels.append(
            RecipeModel (
                name: "Chichen",
                caloriesPer100Grams: 322,
                recipe: """
                **Ingredients**
                - ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGChicken",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        recipeModels.append(
            RecipeModel (
                name: "Homemade Pizza",
                caloriesPer100Grams: 166,
                recipe: """
                **Ingredients**
                - pizza in ..
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGPizza",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )

        recipeModels.append(
            RecipeModel (
                name: "Apple Pie",
                caloriesPer100Grams: 237,
                recipe: """
                **Ingredients**
                - Apple ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGApplePie",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        recipeModels.append(
            RecipeModel (
                name: "Chichen",
                caloriesPer100Grams: 322,
                recipe: """
                **Ingredients**
                - ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGChicken",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        recipeModels.append(
            RecipeModel (
                name: "Homemade Pizza",
                caloriesPer100Grams: 166,
                recipe: """
                **Ingredients**
                - pizza in ..
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGPizza",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )

        recipeModels.append(
            RecipeModel (
                name: "Apple Pie",
                caloriesPer100Grams: 237,
                recipe: """
                **Ingredients**
                - Apple ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGApplePie",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        recipeModels.append(
            RecipeModel (
                name: "Chichen",
                caloriesPer100Grams: 322,
                recipe: """
                **Ingredients**
                - ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGChicken",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        recipeModels.append(
            RecipeModel (
                name: "Homemade Pizza",
                caloriesPer100Grams: 166,
                recipe: """
                **Ingredients**
                - pizza in ..
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGPizza",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )

        recipeModels.append(
            RecipeModel (
                name: "Apple Pie",
                caloriesPer100Grams: 237,
                recipe: """
                **Ingredients**
                - Apple ...
                - ...
                - ...
                - ...
                - ...
                """,
                recipeImage: "IMGApplePie",
                recipeImageURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        
        

    }
}
