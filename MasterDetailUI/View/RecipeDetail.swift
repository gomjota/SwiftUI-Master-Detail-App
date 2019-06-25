import SwiftUI

struct RecipeDetail : View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Image(recipe.imageName)
                .navigationBarTitle(Text(recipe.title))
            Text(recipe.description)
                .lineLimit(30)
                .padding()
        }
    }
}

#if DEBUG
struct RecipeDetail_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetail(recipe: testData[0])
        }
    }
}
#endif
