//
//  MealButtons.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/3/23.
//

import SwiftUI

//@State private var selectedMeal: MealsOfTheDay = MealsOfTheDay()

struct MealButtons: View {
    var body: some View {
//        NavigationView lives in ConentView
            VStack(spacing: 15) {
                NavigationLink(destination: RecipesList(recipesGiven: breakfastRecipes, mealName: "Breakfast"), label: {
                    MealButtonView(mealName: "Breakfast", mealImage: "sunrise")
                })
                NavigationLink(destination: RecipesList(recipesGiven: lunchRecipes, mealName: "Lunch"), label: {
                    MealButtonView(mealName: "Lunch", mealImage: "sun.and.horizon")
                })
                NavigationLink(destination: RecipesList(recipesGiven: dinnerRecipes, mealName: "Dinner"), label: {
                    MealButtonView(mealName: "Dinner", mealImage: "cloud.moon").edgesIgnoringSafeArea(.all)
                })
                NavigationLink(destination: RecipesList(recipesGiven: allRecipes, mealName: "All"), label: {
                    MealButtonView(mealName: "All", mealImage: "tree").edgesIgnoringSafeArea(.all)
                })
            }
        }
    }

 

struct MealButtons_Previews: PreviewProvider {
    static var previews: some View {
        MealButtons()
    }
}

struct MealButtonView: View {
    
    var mealName: String
    var mealImage: String
    
    var body: some View {
        HStack {
            Image(systemName: mealImage)
                .resizable().frame(width: 20, height: 20)
                .foregroundColor(.white)
            Text(mealName)
                .bold()
                .padding()
//                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }.frame(width: 250, height: 50)
            .background(Color.red)
            .cornerRadius(10)
    }
}
