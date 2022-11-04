//
//  ViewController.swift
//  LearningTask-5.5
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drinkSorteadaLabel: UILabel!
    @IBOutlet weak var drinkAnteriorLabel: UILabel!
    
    var jogo: DrinkGame? {
        didSet {
            guard isViewLoaded, let jogo = jogo else { return }
            atualizaViews(para: jogo)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let jogo = jogo {
            atualizaViews(para: jogo)
        }
    }


    @IBAction func tapToPlayButton(_ sender: UIButton) {
        jogo?.executa()
    }
    
    func atualizaViews(para jogo: DrinkGame) {
        drinkAnteriorLabel.text = jogo.drinkAnterior.text
        drinkSorteadaLabel.text = jogo.drinkSorteado.text
        view.backgroundColor = ViewBackgroundColor.para(jogo.drinkSorteado)
    }
    
}

