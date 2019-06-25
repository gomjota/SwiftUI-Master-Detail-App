import SwiftUI
import Combine

class RecipeStore : BindableObject {
    var recipes: [Recipe] {
        didSet {
            didChange.send()
        }
    }
    
    var didChange = PassthroughSubject<Void, Never>()
    
    init(recipes: [Recipe] = []) {
        self.recipes = recipes
    }
    
    func addRecipe() {
        self.recipes.insert(Recipe(title: "Vegan winter rolls", description: "Giving an established recipe a bit of a tweak is a fun thing to do - switch your fillings to match the season", likes: 350), at: 0)
    }
    
    func deleteRecipe(at offsets: IndexSet) {
        for index in offsets {
            self.recipes.remove(at: index)
        }
    }
}
