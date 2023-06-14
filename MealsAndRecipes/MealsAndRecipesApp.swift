//
//  MealsAndRecipesApp.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 5/21/23.
//

import SwiftUI


@main
struct MealsAndRecipesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().preferredColorScheme(.light)
        }
    }
}

// App layout
// Landing page with three meal button options

// Tapping meal goes to a list of recipes
// this has all recipes names, filtered by current selected meal.
// buttons on top to select other meal options
// Tapping a recipe opens a window with recipe information

