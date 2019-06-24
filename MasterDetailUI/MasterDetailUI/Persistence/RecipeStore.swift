import SwiftUI
import Combine

class RecipeStore: BindableObject {
    var recipes: [Recipe] {
        didSet {
            didChange.send()
        }
    }
    
    init(recipes: [Recipe] = []) {
        self.recipes = recipes
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
