//
//  JsonDecoder.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/10/23.
//

import Foundation

struct RecipeElement: Codable, Hashable {
    let meal: String
    let mealName: String
    let ingredient: String
    let instructions: String
    
    static let allRecipes: [RecipeElement] = Bundle.main.decode(file: "MealsAndRecipesList.json")
    static let sampleRecipe: RecipeElement = allRecipes[0]
}

enum Meal: String, Codable {
    case all = "All"
    case breakfast = "Breakfast"
    case dinner = "Dinner"
    case lunch = "Lunch"
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
//        get the file url
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project!")
        }
//        convert the file to data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load contents of \(file)")
        }
        
//        decode the data
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in the project")
        }
        
        return loadedData
    }
}

let allRecipes: [RecipeElement] = RecipeElement.allRecipes
let breakfastRecipes = allRecipes.filter { $0.meal == "Breakfast" }
let lunchRecipes = allRecipes.filter { $0.meal == "Lunch" }
let dinnerRecipes = allRecipes.filter { $0.meal == "Dinner" }

