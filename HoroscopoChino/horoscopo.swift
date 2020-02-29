//
//  horoscopo.swift
//  HoroscopoChino
//
//  Created by user164187 on 2/18/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import Foundation

enum animal: String {
    case serpiente
    case caballo
    case cabra
    case mono
    case gallo
    case perro
    case cerdo
    case rata
    case buey
    case tigre
    case liebre
    case dragon
}

enum elemento: String {
    case madera
    case fuego
    case agua
    case tierra
    case metal
}

enum direccion: String {
    case norte
    case sur
    case este
    case oeste
}

enum estacion: String {
    case primavera
    case verano
    case otoño
    case invierno
}

enum periodoEstacion: String {
    case temprana
    case temprano
    case media
    case medio
    case tardia
    case tardio
}

extension animal: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

extension elemento: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

extension direccion: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

extension estacion: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

extension periodoEstacion: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

struct Horoscopo {
    let nombre: animal
    let imagen: animal
    let fechaComienzo: String
    let fechaFin: String
    let elemento: elemento
    let caracteristicas: String
    let direccion: direccion
    let estacion: estacion
    let periodoEstacion: periodoEstacion
    let animalCompatible1: animal
    let animalCompatible2: animal
}
