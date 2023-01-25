//
//  ResultView.swift
//  Tentar
//
//  Created by unicred on 25/01/23.
//

import UIKit

class ResultView: BaseView {
    lazy var resultLabel: UILabel = {
        let resultLbl = UILabel()
        resultLbl.text = ""
        resultLbl.textColor = .black
        resultLbl.font = UIFont.systemFont(ofSize: 18)
        resultLbl.textAlignment = .center
        
        return resultLbl
    }()
    
    override func addSubviews() {
        addSubview(resultLabel)
    }
    
    override func setConstraints() {
        resultLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 150, left: 100, bottom: 0, right: 0), size: .init(width: 100, height: 20))
    }
}
