//
//  RecipeDetailsView.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/10/23.
//

import SwiftUI

struct RecipeDetailsView: View {
    private var recipe: RecipeElement
    
    init(recipe: RecipeElement) {
        self.recipe = recipe
    }
    
    var body: some View {
        VStack {
            Text(recipe.mealName).font(.title)
            Text("Ideal Meal time: \(recipe.meal)").padding()
            Text(recipe.ingredient).font(.subheadline).padding()
            Text(recipe.instructions).font(.body)
            Spacer()
        }.cornerRadius(10)
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: exampleRecipe)
    }
}
