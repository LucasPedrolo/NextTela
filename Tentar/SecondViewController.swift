//
//  SecondViewController.swift
//  Tentar
//
//  Created by unicred on 08/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func nextPagina(resultadoProximaPagina: Float?) {
        // delay entre uma funcionalidade e outra. deadline -> comeca + tempo para acabar
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            self.resultado.text = "\(resultadoProximaPagina ?? 0)"
            print("DENTRO DO DISPATCH")
        }
        print("FORA DO DISPATCH")
    }
}
