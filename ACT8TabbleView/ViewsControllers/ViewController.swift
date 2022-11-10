//
//  ViewController.swift
//  ACT8TabbleView
//
//  Created by Alumno on 06/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
    Sunset(tittle: "Queso fundido - $79",reseña: "Delicioso queso fundido excelente para acompañarlo con tu comida", imageName: "quesoFundido"),
    Sunset(tittle: "Quesadillas (3) - $69",reseña: "Buena opcion para comer algo antes de que llegue el plato fuerte!", imageName: "Quesadillas"),
    Sunset(tittle: "Chorizo - $89",reseña: "Orden de chorizo para acompañar tu platillo", imageName: "Chorizo"),
    Sunset(tittle: "Frijoles - $69",reseña: "Orden de frijoles recien hechos!", imageName: "frijoles")


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
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EntradasTableViewCell
        //se manda a llamar el TableViewCell para poder asignar la informacion correspondiente
        cell.label.text = sunset.tittle
        cell.reseña1.text = sunset.reseña
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        
        return cell
    }

    //esta funcion basicamente hace de un tamaño predeterminado cada fila 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}

