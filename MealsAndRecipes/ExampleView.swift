//
//  ExampleView.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/11/23.
//

import SwiftUI

struct ExampleView: View {
    private var recipes: [RecipeElement] = RecipeElement.allRecipes
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        List {
            ForEach(recipes, id: \.mealName) { recipe in
                /*@START_MENU_TOKEN@*/Text(recipe.mealName)/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
