//
//  HomeViewModel.swift
//  Tentar
//
//  Created by unicred on 25/01/23.
//

import Foundation

class HomeViewModel {
    
    func dataReceiver(weight: Float, height: Float, completion: @escaping (CustomData) -> ()) {
        let data = CustomData(weight: weight, height: height)
        completion(data)
    }
}
