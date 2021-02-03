//
//  DrinkItem.swift
//  CoffeeDB
//
//  Created by andronick martusheff on 2/2/21.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink:Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(drink.name)
                    .accentColor(.primary)
                    .font(.headline)
                Text(drink.description)
                    .accentColor(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(height:40)
                
            }
            
        }
            
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
