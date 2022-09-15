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
        moovie = Moovie(tittle: "Filme 1", description: "Descrição 1")
        moovies.append( moovie )
        moovie = Moovie(tittle: "Filme 2", description: "Descrição 2")
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
        
        let moovieContent = tableView.dequeueReusableCell(withIdentifier: moovieContentReuse, for: indexPath)
        moovieContent.textLabel?.text = moovie.tittle
        
        return moovieContent
    }

}

