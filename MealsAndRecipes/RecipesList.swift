//
//  RecipesList.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/5/23.
//

import SwiftUI

let exampleRecipe = RecipeElement(meal: "Dinner", mealName: "Eggplant Parm", ingredient: "eggs, milk, eggplants", instructions: "Preheat at 425 degrees and then lorem ipsum")


struct RecipesList: View {
    @State private var mealGiven: MealsOfTheDay
    
    init(mealGiven: MealsOfTheDay) {
        self.mealGiven = mealGiven
//        let recipes = getAllRecipesForMeal(mealChosen: self.mealGiven)
    }
    
    private var recipes: [RecipeElement] = RecipeElement.allRecipes
    
//    @State private var recipes = getAllRecipesForMeal(mealChosen: self.mealGiven)
    
    var body: some View {
        VStack {
            Text(mealStrings[mealGiven]!)
                .font(.largeTitle)
            HStack {
//                MealButtons()
                HStack (spacing: 30) {
                    Text(mealStrings[.all]!)
                    Text(mealStrings[.breakfast]!)
                    Text(mealStrings[.lunch]!)
                    Text(mealStrings[.dinner]!)
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

func updateSelectedMeal(currentMealType: MealsOfTheDay, newMealType: MealsOfTheDay) -> MealsOfTheDay {
    let currentMealType = newMealType
    return currentMealType
}

struct RecipeItemView: View {
    var recipe: RecipeElement
    
    var body: some View {
        Text(recipe.mealName)
    }
}


