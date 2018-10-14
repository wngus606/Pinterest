//
//  MovieViewModel.swift
//  Pinterest
//
//  Created by Seo Juhyun on 14/10/2018.
//  Copyright © 2018 seoju. All rights reserved.
//

import UIKit

class MovieViewModel {
    
    var didChangedMoveis: (() -> Void)?
    
    private var networkManager: NetworkManager = NetworkManager()
    var models: [Movie] = []
    
    var numberOfCells: Int {
        return models.count
    }
    
    func request(page: Int, completion: @escaping () -> Void) {
        networkManager.getNewMovies(page: page) { (movies, error) in
            self.models = movies ?? []
            completion()
        }
    }
}
