//
//  RecipesList.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/5/23.
//

import SwiftUI

struct RecipesList: View {
    @State private var recipesGiven: [RecipeElement]
    private var mealName: String
    
    init(recipesGiven: [RecipeElement], mealName: String) {
        self.recipesGiven = recipesGiven
        self.mealName = mealName
    }
    
    var body: some View {
        VStack {
            Text(mealName.capitalized)
                .font(.largeTitle)
                .padding()
            HStack {
                HStack (spacing: 30) {
//                    MealTabButton(buttonText: "All")
//                    MealTabButton(buttonText: "Breakfast")
//                    MealTabButton(buttonText: "Lunch")
//                    MealTabButton(buttonText: "Dinner")
                    NavigationLink(destination: RecipesList(recipesGiven: breakfastRecipes, mealName: "Breakfast"), label: {
                        Text("Breakfast").foregroundColor(.black)
                    })
                    NavigationLink(destination: RecipesList(recipesGiven: lunchRecipes, mealName: "Lunch"), label: {
                        Text("Lunch").foregroundColor(.black)
                    })
                    NavigationLink(destination: RecipesList(recipesGiven: dinnerRecipes, mealName: "Dinner"), label: {
                        Text("Dinner").foregroundColor(.black)
                    })
                    NavigationLink(destination: RecipesList(recipesGiven: allRecipes, mealName: "All"), label: {
                        Text("All").foregroundColor(.black)
                    })
                }.padding()
                
            }
            VStack {
                List {
                    ForEach(recipesGiven, id: \.self) { recipe in
                        NavigationLink(destination: RecipeDetailsView(recipe: recipe), label: {
                            RecipeItemView(recipe: recipe)
                        }
                        )}
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
    
    struct RecipesList_Previews: PreviewProvider {
        static var previews: some View {
            RecipesList(recipesGiven: dinnerRecipes, mealName: "Dinner")
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
    
    struct MealTabButton: View {
        var buttonText: String
        
        init(buttonText: String) {
            self.buttonText = buttonText
        }
        
        var body: some View {
            //        var isSelected = false
            Text(buttonText)
            //        Button(action: filterRecipes(meal: .all, recipeList: recipes),
            //               label: { Text("String")})
        }
    }
}
