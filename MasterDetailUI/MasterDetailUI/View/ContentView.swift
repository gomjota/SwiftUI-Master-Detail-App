import SwiftUI

struct ContentView : View {
    @ObjectBinding var store = RecipeStore()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: store.addRecipe) {
                        Text("Add recipe")
                    }
                }
                
                Section {
                    ForEach(store.recipes) { recipe in
                        RecipeCell(recipe: recipe)
                    }
                    .onDelete(perform: store.deleteRecipe(at:))
                }
            }
            .navigationBarTitle(Text("Recipes"))
            .navigationBarItems(trailing: EditButton())
            .listStyle(.grouped)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(store: RecipeStore(recipes: testData))
    }
}
#endif

struct RecipeCell : View {
    let recipe: Recipe
    
    var body: some View {
        return NavigationButton(destination: RecipeDetail(recipe: recipe)) {
            Image(recipe.imageName)
                .resizable()
                .frame(minWidth: 0, idealWidth: 100, maxWidth: 100, minHeight: 0, idealHeight: 100, maxHeight: 100)
            
            
                VStack(alignment: .leading) {
                    Text(recipe.title)
                    
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                        Text(String(recipe.likes))
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(.secondary)
                    }
                    
                }
            }
            .navigationBarTitle(Text("Recipes"))
    }
}
