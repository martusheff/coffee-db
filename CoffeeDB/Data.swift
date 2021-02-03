//
//  Data.swift
//  CoffeeDB
//
//  Created by andronick martusheff on 2/2/21.
//

import Foundation


let drinkData:[Drink] = load("drinks.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle.")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename).")
    }
}
