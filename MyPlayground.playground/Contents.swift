var recipes: [RecipeElement] = RecipeElement.allRecipes

//var breakfast: [RecipeElement] = RecipeElement.allRecipes
//let orderedset = fetchHouse.houseData.filter { set.insert($0).inserted }
//self.houseData.filter({ $0.stateFullName == States})))
//var breakfast: [RecipeElement]
let breakfast: [RecipeElement] = recipes.filter({$0.meal == "Breakfast"})

