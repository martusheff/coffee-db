//
//  DrinkDetail.swift
//  CoffeeDB
//
//  Created by andronick martusheff on 2/3/21.
//

import SwiftUI

struct DrinkDetail: View {
    var drink:Drink
    var body: some View {
        List{
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8) {
                        Text(drink.name.uppercased())
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                        
                }.padding(.top,50)
                
            }.padding(.top)
            .padding(.bottom)
        }
        .edgesIgnoringSafeArea(.top)

        
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action:{}) {
            Text("Add to Order")
        }.frame(width: 250, height: 50)
        .background(Color.green)
        .foregroundColor(.white)
        .font(.headline)
        .cornerRadius(10)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
