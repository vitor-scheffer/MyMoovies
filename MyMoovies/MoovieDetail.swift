//
//  MoovieDetail.swift
//  MyMoovies
//
//  Created by José Vitor Scheffer Boff dos Santos on 20/09/22.
//

import UIKit

class MoovieDetail: UIViewController {
    
    var moovie: Moovie!
    
    @IBOutlet weak var moovieDetailImage: UIImageView!
    @IBOutlet weak var moovieDetailTittle: UILabel!
    @IBOutlet weak var moovieDetailDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moovieDetailImage.image = moovie.img
        moovieDetailTittle.text = moovie.tittle
        moovieDetailDescription.text = moovie.description
        
    }
    
}
