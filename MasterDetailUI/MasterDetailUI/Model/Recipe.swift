import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var likes: Int
    var imageName: String { return title.replacingOccurrences(of: " ", with: "") }
    var thumbnailName: String { return imageName + "Thumb" }
}

#if DEBUG
let testData = [
    Recipe(title: "Grilled squid salad", description: "Inspired by the investment in flavour that Nonna Franchina made in stuffing her squid, I came up with this recipe, which uses the same principle but in reverse. We’re making a mind-blowing salsa to plunge the hot grilled squid straight into, creating a wonderful harmony between flavour and texture. The salsa is also great when used to dress grilled veg, lamb or other seafood, tossed with pasta or as a topping for crostini. ", likes: 220),
    Recipe(title: "Tuna fettuccine", description: "Cooking with Maria, the only fisherwoman on the island of Procida, just a stone’s throw from Naples, inspired this dish. I love the way she uses pecorino as a seasoning, which is contrary to the ‘no cheese and fish’ rule, while the crushed almonds give texture, creaminess and depth of flavour. To make this recipe sing like Pavarotti, you really need baby or crunchy courgettes, so it’s best made in the summer.", likes: 345),
    Recipe(title: "Comforting sausage bake", description: "Amazing bake with the best ingredients", likes: 415),
    Recipe(title: "Chickpea chard pork", description: "This brilliant speedy supper all comes together in one pan, and takes just 29 minutes to make! Grab a few groceries on your way home from work for a total feast.", likes: 230),
    Recipe(title: "Italian seared beef", description: "Amazing beef with the best ingredients", likes: 165),
    Recipe(title: "Speedy spiced prawn soup", description: "Amazing soup with the best ingredients", likes: 147),
    Recipe(title: "Flaky pastry pesto chicken", description: "Amazing chicken with the best ingredients", likes: 542),
    Recipe(title: "Sweet chicken surprise", description: "Amazing chicken with the best ingredients", likes: 537),
]
#endif
