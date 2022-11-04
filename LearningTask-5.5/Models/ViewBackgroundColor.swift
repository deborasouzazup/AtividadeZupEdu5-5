//
//  ViewBackgroundColor.swift
//  LearningTask-5.5
//
//  Created by Debora.souza on 04/11/22.
//

import Foundation
import UIKit

class ViewBackgroundColor {
    
    static func para (_ bebida: DrinkGame.Drink) -> UIColor {
        switch bebida {
        case .leite:
            return UIColor(named: "Milk") ?? .white
            
        case .cerveja:
            return UIColor(named: "Beer") ?? .systemYellow
            
        case .whisky:
            return UIColor(named: "Whisky") ?? .systemBrown
            
        default:
            return .white
        }
    }
}
