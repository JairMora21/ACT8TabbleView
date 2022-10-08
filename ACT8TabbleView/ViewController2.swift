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
    Sunset(tittle: "Mazda 6 2020",reseña: "Buen carro sedan, mas epacio y mas lujoso que el mazda3", imageName: "mazda62020"),
    Sunset(tittle: "Mazda CX-5 2021",reseña: "Excelente para una familia, detalles lujosos y mucho espacio", imageName: "mazdacx52021"),
    Sunset(tittle: "Mazda CX-30 2021",reseña: "Mucho mas lujosa y espaciosa que la mazda cx5", imageName: "mazdacx302021"),
    Sunset(tittle: "Mazda MX-5 2021",reseña: "Vehiculo deportivo para pasar un buen rato en la ciudad", imageName: "mazdamx52021"),
    Sunset(tittle: "Mazda 3 2022",reseña: "Excelente auto, equilibrado y completo", imageName: "mazda32022")


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
