//
//  ContentView.swift
//  Shared
//
//  Created by Mason Thomas on 6/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var recipes: [Recipe] = []
    
    var body: some View {
        List(recipes) { recipe in
            VStack(alignment: .leading){
                Text(recipe.name).bold()
                Text(recipe.author)
            }
            
        }
        .onAppear{
            Api().fetchData { (recipes) in
                self.recipes = recipes
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

