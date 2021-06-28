//
//  ContentView.swift
//  Shared
//
//  Created by Mason Thomas on 6/7/21.
//

import SwiftUI

struct ListView: View {
    
    @State var recipes: [Recipe] = []
    
    var body: some View {
        ScrollView{
            ForEach(recipes) { recipe in
                NavigationLink(destination: RecipeView(recipe: recipe)) {
                    CardView(recipe: recipe)
                }
            }
        }
        .navigationTitle("Recipes")
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "plus")
        })
        .onAppear{
            Api().fetchData { (recipes) in
                self.recipes = recipes
                print(recipes)
            }
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

