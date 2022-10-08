//
//  ViewController3.swift
//  ACT8TabbleView
//
//  Created by Alumno on 07/10/22.
//

import UIKit

class ViewController3: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //se manda a llamar la tabla del storyboard
    @IBOutlet weak var table3: UITableView!
    
    //se crear una estructura para mas adelante crear un arreglo
    struct Sunset3 {
        let tittle3: String
        let reseña3: String
        let imageName3: String
    }
    
    // se crea el arreglo "Data" aqui vendran los datos de nombre del carro, reseña, año y foto
    let data3: [Sunset3] = [
        Sunset3(tittle3: "Audi TT 2020",reseña3: "Ecxelente auto deportivo, una opcion mas barata al R8", imageName3: "auditt2020"),
        Sunset3(tittle3: "Audi S5 2021",reseña3: "Excelente auto sedan en el cual tendras todos los lujos", imageName3: "audis52021"),
        Sunset3(tittle3: "Audi R8 2022",reseña3: "Uno de los mejores carros del mundo, en cuanto a potencia y diseño", imageName3: "audir82022"),
        Sunset3(tittle3: "Audi Q5 2021",reseña3: "Excelente para una familia, muy bonita y moderna", imageName3: "audiq52021"),
        Sunset3(tittle3: "Audi A4 2020",reseña3: "Buen auto sedan, muy bonito a la vista y lujoso", imageName3: "audia42020"),



    ]
    //se inicializo el data source y delegate como self
    override func viewDidLoad() {
        super.viewDidLoad()
        table3.dataSource = self
        table3.delegate = self
    }
    //se crea esta funcion para poder retornar cuantos datos tiene data
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data3.count
    }
    
    // en esta funcion hace que en la tabla sel storyboard se vayan poniendo cada uno de los datos  del arreglo
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //se crea la variable sunset y cell para apoyarnos a despues poner los datos
        let sunset3 = data3[indexPath.row]
        let cell3 = table3.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! AudiTableViewCell
        //se manda a llamar el TableViewCell para poder asignar la informacion correspondiente
        cell3.label3.text = sunset3.tittle3
        cell3.reseña3.text = sunset3.reseña3
        cell3.iconImageView3.image = UIImage(named: sunset3.imageName3)
        return cell3
    }
    //esta funcion basicamente hace de un tamaño predeterminado cada fila 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        
    }

}
