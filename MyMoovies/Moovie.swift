//
//  Moovie.swift
//  MyMoovies
//
//  Created by José Vitor Scheffer Boff dos Santos on 15/09/22.
//

import UIKit

class Moovie {
    
    var tittle: String!
    var description: String!
    var img: UIImage!
    
    init( tittle: String, description: String, img: UIImage ){
        self.tittle = tittle
        self.description = description
        self.img = img
    }
    
}
