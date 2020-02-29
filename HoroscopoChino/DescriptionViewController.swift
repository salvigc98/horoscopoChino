//
//  DescriptionViewController.swift
//  HoroscopoChino
//
//  Created by user164187 on 2/17/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var birthDate: Date? = nil
    
    let horoscopo = State()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var horoscopoImage: UIImageView!
    @IBOutlet weak var caracteristicasLabel: UILabel!
    @IBOutlet weak var direccionLabel: UILabel!
    @IBOutlet weak var elementoLabel: UILabel!
    @IBOutlet weak var estacionLabel: UILabel!
    @IBOutlet weak var compatibleConLabel: UILabel!
    
    func updateUI(horoscopo: Horoscopo) {
        
        titleLabel.text = horoscopo.nombre.description
        horoscopoImage.image = UIImage(named: horoscopo.imagen.description)
        caracteristicasLabel.text = "Caracteristicas: \(horoscopo.caracteristicas)"
        direccionLabel.text = horoscopo.direccion.description
        elementoLabel.text = horoscopo.elemento.description
        estacionLabel.text = "\(horoscopo.estacion.description) \(horoscopo.periodoEstacion.description)"
        compatibleConLabel.text = "\(horoscopo.animalCompatible1.description) y \(horoscopo.animalCompatible2.description)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let birthdate = birthDate,
            let horoscopo = horoscopo.getHoroscopo(for: birthdate) else { return }
        
        updateUI(horoscopo: horoscopo)

    }

}
