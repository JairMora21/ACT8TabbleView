//
//  ViewController.swift
//  ACT8TabbleView
//
//  Created by Alumno on 06/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let tittle: String
        let reseña: String
        let imageName: String
    }
    
    let data: [Sunset] = [
    Sunset(tittle: "Focus 2018",reseña: "Excelente carro para ciudad, se maneja de buena manera", imageName: "fordfocus"),
    Sunset(tittle: "Figo 2022",reseña: "Carro mas economico que te brinda excelentes oportunidades", imageName: "fordfigo"),
    Sunset(tittle: "Mustang 2022",reseña: "Es excelente para los amantes de la velocidad", imageName: "fordmustang"),
    Sunset(tittle: "Raptor 2021",reseña: "Tiene de todo, tiene muchisimas funciones y es muy bonita", imageName: "fordraptor"),
    Sunset(tittle: "Fusion 2020",reseña: "Es el carro mas TOP de los sean, por encima del focus y figo", imageName: "fordfusion")


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
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.tittle
        cell.reseña1.text = sunset.reseña
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}

