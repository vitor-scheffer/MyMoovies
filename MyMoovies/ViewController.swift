//
//  ViewController.swift
//  MyMoovies
//
//  Created by José Vitor Scheffer Boff dos Santos on 15/09/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var moovies: [Moovie] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var moovie: Moovie
        moovie = Moovie(tittle: "Filme 1", description: "Descrição 1", img: UIImage(named: "filme1")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 2", description: "Descrição 2", img: UIImage(named: "filme2")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 3", description: "Descrição 2", img: UIImage(named: "filme3")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 4", description: "Descrição 2", img: UIImage(named: "filme4")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 5", description: "Descrição 2", img: UIImage(named: "filme5")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 6", description: "Descrição 2", img: UIImage(named: "filme6")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 7", description: "Descrição 2", img: UIImage(named: "filme7")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 8", description: "Descrição 2", img: UIImage(named: "filme8")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 9", description: "Descrição 2", img: UIImage(named: "filme9")! )
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 10", description: "Descrição 2", img: UIImage(named: "filme10")! )
        moovies.append( moovie )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moovie = moovies[ indexPath.row ]
        let moovieContentReuse = "moovieContent"
        
        let moovieContent = tableView.dequeueReusableCell(withIdentifier: moovieContentReuse, for: indexPath) as! MoovieContainer
        moovieContent.moovieImage.image = moovie.img
        moovieContent.moovieTittle.text = moovie.tittle
        moovieContent.moovieAbstract.text = moovie.description
        
//        moovieContent.moovieImage.layer.cornerRadius = 42
//        moovieContent.moovieImage.clipsToBounds = true
//        moovieContent.textLabel?.text = moovie.tittle
//        moovieContent.imageView?.image = moovie.img
        
        return moovieContent
    }

}

