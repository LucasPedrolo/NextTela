//
//  ViewController.swift
//  Tentar
//
//  Created by unicred on 08/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pesoTF: UITextField!
    @IBOutlet weak var alturaTF: UITextField!
    
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }

    func proximaPagina(){
        guard let secondViewController = mainStoryBoard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        secondViewController.nextPagina(resultadoProximaPagina: calcular())
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    var peso: Float?
    var altura: Float?
    var resultado: Float?
    
    
    func calcular() -> Float {
        peso = Float(pesoTF.text ?? "")
        altura = Float(alturaTF.text ?? "")

        
        resultado = peso! / (altura! * altura!)
        
        return resultado ?? 0
    }
    
    
    
   @IBAction func botaoC(_ sender: Any) {
       proximaPagina()
   }
    
    @IBAction func thirdScreen(_ sender: Any) {
        nextThirdScreen()
    }
    
    func nextThirdScreen() {
        guard let thirdViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else { return }
        
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}

