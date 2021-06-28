//
//  RecipeView.swift
//  recipes
//
//  Created by Mason Thomas on 6/22/21.
//

import SwiftUI

struct RecipeView: View {
    
    let recipe: Recipe
    
    var body: some View {
        ScrollView{
            Text(recipe.name).font(.title).fontWeight(.bold)
            ScrollView(.horizontal) {
                HStack{
                    Image("meatball")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .clipped()
                        .redacted(reason: .placeholder)
                }
            }
            Text("Ingredients").padding()
            VStack(alignment: .leading) {
            ForEach(recipe.ingredients, id: \.self) { ingredient in
                Text(ingredient)
                }
            }
            Text("Make It").padding()
            VStack(alignment: .leading) {
            ForEach(recipe.steps, id: \.self) { step in
                Text(step)
                }
            }
            Spacer()
        }
    }
}
