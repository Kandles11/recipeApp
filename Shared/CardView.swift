//
//  CardView.swift
//  recipes
//
//  Created by Mason Thomas on 6/22/21.
//

import SwiftUI
import Foundation

struct CardView: View {
    
    let recipe: Recipe
    
    var body: some View {
            VStack {
                Image("meatball")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                    .redacted(reason: .placeholder)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Dinner")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text(recipe.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                        Text("Written by \(recipe.author)".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .layoutPriority(100)
     
                    Spacer()

                }.padding()
                HStack{
                    Text("\(recipe.prepTime)".uppercased()).foregroundColor(.secondary).font(.headline)
                    Text("\(recipe.calories) cals.".uppercased()).foregroundColor(.secondary).font(.headline)
                    Text("May 9, 2021".uppercased()).foregroundColor(.secondary).font(.headline)
                }.padding(.bottom)
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.3), lineWidth: 3)
            )
            .padding([.top, .horizontal])
        }
    
}

