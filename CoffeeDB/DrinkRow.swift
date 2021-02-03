//
//  DrinkRow.swift
//  CoffeeDB
//
//  Created by andronick martusheff on 2/2/21.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (self.drinks, id: \.name) { drink in
                        
                        NavigationLink(
                            destination: DrinkDetail(drink:drink))
                        {
                                                
                            DrinkItem(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                    }
                    }
                }
            }
        }
        
        

        
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
