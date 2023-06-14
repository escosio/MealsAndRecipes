//
//  RecipesList.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/5/23.
//

import SwiftUI

let exampleRecipe = RecipeElement(meal: "Dinner", mealName: "Eggplant Parm", ingredient: "eggs, milk, eggplants", instructions: "Preheat at 425 degrees and then lorem ipsum")


struct RecipesList: View {
    @State private var mealGiven: Meal
    
    init(mealGiven: Meal) {
        self.mealGiven = mealGiven
    }
    
    private var recipes: [RecipeElement] = RecipeElement.allRecipes
    
    var body: some View {
        let mealString = "\(mealGiven)"
        VStack {
            Text(mealString.capitalized)
                .font(.largeTitle)
                .padding()
            HStack {
//                MealButtons()
                HStack (spacing: 30) {
                    Text("All")
                    Text("Breakfast")
                    Text("Lunch")
                    Text("Dinner")
                }.padding()

            }
            VStack {
                List {
                    ForEach(recipes, id: \.self) { recipe in
                        NavigationLink(destination: RecipeDetailsView(recipe: recipe), label: {
                            RecipeItemView(recipe: recipe)
                        }

                    )}
                }
                }
            }
        }
    }

struct RecipesList_Previews: PreviewProvider {
    static var previews: some View {
        RecipesList(mealGiven: .dinner)
    }
}

func filterRecipes(meal: Meal, recipeList: [RecipeElement]) -> [RecipeElement] {
    var newList: [RecipeElement] = Array()
    let mealString = "\(meal)"
    for recipe in recipeList {
        if recipe.meal == mealString {
            newList.append(recipe)
        }
    }
    return newList
}

struct RecipeItemView: View {
    var recipe: RecipeElement
    
    var body: some View {
        Text(recipe.mealName)
    }
}


