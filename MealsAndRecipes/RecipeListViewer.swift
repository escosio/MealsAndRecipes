//
//  RecipeListViewer.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/15/23.
//

import SwiftUI

struct RecipeListViewer: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
//            RecipesList(mealGiven: .all).tabItem { Text("All") }.tag(1)
//            RecipesList(mealGiven: .breakfast).tabItem { Text("Breakfast") }.tag(2)
//            RecipesList(mealGiven: .lunch).tabItem { Text("Lunch") }.tag(3)
//            RecipesList(mealGiven: .dinner).tabItem { Text("Dinner") }.tag(4)
        }
    }
    
    struct RecipeListViewer_Previews: PreviewProvider {
        static var previews: some View {
            RecipeListViewer()
        }
    }
    
    

    struct RecipesListV2: View {
        @State private var mealGiven: Meal
        
        init(mealGiven: Meal) {
            self.mealGiven = mealGiven
        }
        
        private var recipes = allRecipes
    //    private var recipes: [RecipeElement] = RecipeElement.allRecipes
    //    private var dinner = recipes.filter { $0.meal == "Dinner" }


    //    let breakfast: [RecipeElement] = recipes.filter({$0.meal == "Breakfast"})
        
        var body: some View {
            let mealString = "\(mealGiven)"
            VStack {
                Text(mealString.capitalized)
                    .font(.largeTitle)
                    .padding()
                HStack {
                    HStack (spacing: 30) {
                        MealTabButton(buttonText: "All")
                        MealTabButton(buttonText: "Breakfast")
                        MealTabButton(buttonText: "Lunch")
                        MealTabButton(buttonText: "Dinner")
                    }.padding()
                    
                }
                VStack {
                    //                List {
                    //                    ForEach(recipes, id: \.self) { recipe in
                    //                        NavigationLink(destination: RecipeDetailsView(recipe: recipe), label: {
                    //                            RecipeItemView(recipe: recipe)
                    //                        }
                    //
                    //                    )}
                    ////                }
                    //                Attempt at filtering
                    List {
                        ForEach(recipes, id: \.self) { recipe in
                            NavigationLink(destination: RecipeDetailsView(recipe: recipe), label: {
                                RecipeItemView(recipe: recipe)
                            }
                                           
                            )}
                        //                }
                    }
                }
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

}
