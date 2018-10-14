//
//  MovieCell.swift
//  Pinterest
//
//  Created by Seo Juhyun on 14/10/2018.
//  Copyright © 2018 seoju. All rights reserved.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!

    func model(_ movie: Movie) {
        titleLabel.text = movie.title
        thumbnailImageView.image = UIImage(named: "placeholder")
        if let url = URL(string: "https://image.tmdb.org/t/p/w500/\(movie.posterPath)") {
            DispatchQueue.global().async {
                guard let data = try? Data(contentsOf: url) else { return }
                DispatchQueue.main.async {
                    self.thumbnailImageView.image = UIImage(data: data)
                }
            }
        }
    }
}
