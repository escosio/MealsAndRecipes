//
//  MealType.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 5/21/23.
//

//import Foundation
import SwiftUI

// a data collection of all recipes, hard coded for now until the csv can be pulled
// enum for meals of the day
// Recipe class and has a meal of the day associated
// function that accepts a meal of the day, and returns all meals that match


// Recipe class with all the info that will be provided in the csv
class Recipe {
    var nameOfMeal: String
    var mealTime: MealsOfTheDay
    var ingredients: String
    var recipe: String

    init(nameOfMeal: String, mealTime: MealsOfTheDay, ingredients: String, instructions: String) {
        self.nameOfMeal = nameOfMeal
        self.mealTime = mealTime
        self.ingredients = ingredients
        self.recipe = instructions
    }
}

// enum for meals just to organize them
enum MealsOfTheDay {
    case breakfast, lunch, dinner, all
}

let mealStrings: [MealsOfTheDay : String] = [
    .all : "All",
    .breakfast: "Breakfast",
    .lunch : "Lunch",
    .dinner: "Dinner"
    ]

// temporary data collection, will be replaced with csv or json
let recipeDict = [
    Recipe(nameOfMeal: "Chocolate Pancakes", mealTime: .breakfast, ingredients: "", instructions: ""),
    Recipe(nameOfMeal: "Tacos", mealTime: .dinner, ingredients: "", instructions: ""),
    Recipe(nameOfMeal: "Meatballs", mealTime: .dinner, ingredients: "", instructions: "")
]

// function that accepts a MealOfTheDay from enum and returns all associated recipes in an array
func getAllRecipesForMeal(mealChosen: MealsOfTheDay) -> [Recipe] {
    var recipesList: [Recipe] = []
    for recipe in recipeDict {
//        if meal is the same or all
        if recipe.mealTime == mealChosen || mealChosen == .all {
            recipesList.append(recipe)
        }
    }
    return recipesList
}

