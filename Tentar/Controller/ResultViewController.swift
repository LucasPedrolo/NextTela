//
//  ResultViewController.swift
//  Tentar
//
//  Created by unicred on 25/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var viewResult = ResultView()
    var viewModel = ResultViewModel()
    
    override func loadView() {
        view = viewResult
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getCustomData(customData: CustomData) {
        viewResult.resultLabel.text = "\(viewModel.calc(weight: customData.weight, height: customData.height))"
    }
}
