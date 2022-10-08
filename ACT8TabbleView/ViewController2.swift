//
//  ViewController2.swift
//  ACT8TabbleView
//
//  Created by Alumno on 07/10/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let tittle: String
        let reseña: String
        let imageName: String
    }
    
    let data: [Sunset] = [
    Sunset(tittle: "Focus 2018",reseña: "buena", imageName: "fordfocus"),
    Sunset(tittle: "Figo 2022",reseña: "buena", imageName: "fordfigo"),
    Sunset(tittle: "Mustang 2022",reseña: "buena", imageName: "fordmustang"),
    Sunset(tittle: "Raptor 2021",reseña: "buena", imageName: "fordraptor"),
    Sunset(tittle: "Fusion 2020",reseña: "buena", imageName: "fordfusion")


    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! MazdaTableViewCell
        cell.titulo.text = sunset.tittle
        cell.reseña.text = sunset.reseña
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}
