//
//  HomeViewController.swift
//  Tentar
//
//  Created by unicred on 25/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView = HomeView()
    var viewModel = HomeViewModel()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.calculateButton.addTarget(self, action: #selector(getData), for: .touchUpInside)
    }
    
    @objc func getData() {
        viewModel.dataReceiver(
            weight: Float(homeView.weightTxtField.text ?? "") ?? 404,
            height: Float(homeView.heightTxtField.text ?? "") ?? 404,
            completion: {
            result in
            
            let resultViewController = ResultViewController()
            resultViewController.getCustomData(customData: result)
            self.navigationController?.pushViewController(resultViewController, animated: true)
        })
    }
}
