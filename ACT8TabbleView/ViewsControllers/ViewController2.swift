//
//  ViewController2.swift
//  ACT8TabbleView
//
//  Created by Alumno on 07/10/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //se manda a llamar la tabla del storyboard
    @IBOutlet weak var table: UITableView!
    
    //se crear una estructura para mas adelante crear un arreglo
    struct Sunset {
        let tittle: String
        let reseña: String
        let imageName: String
    }
    
    // se crea el arreglo "Data" aqui vendran los datos de nombre del carro, reseña, año y foto
    let data: [Sunset] = [
    Sunset(tittle: "Chilaquiles - $110",reseña: "Chilaquiles divorciados, rojos o verdes, pidelos a tu gusto!", imageName: "Chilaquiles"),
    Sunset(tittle: "Enchiladas (4) - $99",reseña: "Deliciosas enchiladas rojas, pidelas con pollo o carne", imageName: "Enchiladas"),
    Sunset(tittle: "Huevos - $89",reseña: "Huevos revueltos, a la mexicana o con jamon,(incluye frijoles)", imageName: "huevos"),
    Sunset(tittle: "Panini $75",reseña: "Delicioso panini de pollo, res o jamon ", imageName: "Panini"),
        Sunset(tittle: "Sandwich $69",reseña: "Sandwich de jamon, pollo, milanesa (incluye jitomate, lechuja y aguacate)", imageName: "sandwich"),
    Sunset(tittle: "Sopes (3) - $79",reseña: "Pidelos a tu gusto ya se de carne desebrada, frijoles, queso y pollo", imageName: "sopes")



    ]
    //se inicializo el data source y delegate como self
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    //se crea esta funcion para poder retornar cuantos datos tiene data
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // en esta funcion hace que en la tabla sel storyboard se vayan poniendo cada uno de los datos  del arreglo
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //se crea la variable sunset y cell para apoyarnos a despues poner los datos
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! DesayunosTableViewCell
        //se manda a llamar el TableViewCell para poder asignar la informacion correspondiente
        cell.titulo.text = sunset.tittle
        cell.reseña.text = sunset.reseña
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    //esta funcion basicamente hace de un tamaño predeterminado cada fila 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}
