//
//  Model.swift
//  api test app
//
//  Created by Mason Thomas on 6/7/21.
//

import Foundation

struct Recipe: Codable {
    let name: String
    let calories: Int
    let prepTime: String
    let author: String
    let date: String
    let slug: String
    let _id: String
}

extension Recipe : Identifiable {
    var id: String {return _id}
}

class Api {
    func fetchData(completion: @escaping ([Recipe]) -> ()) {
        guard let url = URL(string: "https://martin-family-recipes.herokuapp.com/api/recipes") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let recipes = try! JSONDecoder().decode([Recipe].self, from: data!)
            print(recipes)
            
            DispatchQueue.main.async {
                completion(recipes)
            }
            
        }
        .resume()
    }
}
