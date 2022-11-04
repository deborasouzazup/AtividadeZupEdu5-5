//
//  DrinkGame.swift
//  LearningTask-5.5
//
//  Created by Debora.souza on 04/11/22.
//

import Foundation

struct DrinkGame {
    private(set) var drinkAnterior = Drink.indefinido
    private(set) var drinkSorteado = Drink.indefinido
    
    mutating func executa() {
        let numeroSorteado = Int.random(in: 1...3)
        
        drinkAnterior = drinkSorteado
        drinkSorteado = Drink(rawValue: numeroSorteado)!
        
    }
    
    enum Drink: Int {
        case indefinido = 0
        case leite = 1, cerveja, whisky
        
        var text: String {
            switch self {
            case .leite:
                return "🥛"
            case .cerveja:
                return "🍺"
            case .whisky:
                return "🥃"
            default:
                return "🙋"
            }
        }
    }
}
