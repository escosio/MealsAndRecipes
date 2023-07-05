//
//  RecipeDetailsView.swift
//  MealsAndRecipes
//
//  Created by Scott D'Antuono on 6/10/23.
//

import SwiftUI

let exampleRecipe = RecipeElement(meal: "Dinner", mealName: "Eggplant Parm", ingredient: "eggs, milk, eggplants", instructions: longText)

let longText: String = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."


struct RecipeDetailsView: View {
    private var recipe: RecipeElement
    
    init(recipe: RecipeElement) {
        self.recipe = recipe
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(recipe.mealName).font(.title).padding()
                HStack {
                    Text("Ideal Meal time:").font(.system(size: 18, weight: .bold))
                    Text("\(recipe.meal)")
                }.padding()
                Text("Ingredients:").font(.system(size: 18, weight: .bold))
                Text(recipe.ingredient).font(.subheadline)
                VStack {
                    Text("Instructions").font(.system(size: 18, weight: .bold)).padding(.top)
                    Text(recipe.instructions).font(.body)
                }
                Spacer()
            }.cornerRadius(10).padding().lineLimit(nil)
        }
        
    }
}
struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: exampleRecipe)
    }
}
