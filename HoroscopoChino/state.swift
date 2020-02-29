//
//  state.swift
//  HoroscopoChino
//
//  Created by user164187 on 2/18/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import Foundation

struct State {
    private var horoscopoCollection: [Horoscopo]
    private let formatter = DateFormatter()
    
    init() {
        horoscopoCollection = [
            Horoscopo(nombre: .serpiente, imagen: .serpiente, fechaComienzo: "06-02-1989", fechaFin: "26-01-1990", elemento: .tierra, caracteristicas: "inteligente, misterioso, intuitivo, atrevido, ordenado y sofisticado", direccion: .sur, estacion: .verano, periodoEstacion: .temprano, animalCompatible1: .gallo, animalCompatible2: .buey),
            Horoscopo(nombre: .caballo, imagen: .caballo, fechaComienzo: "27-01-1990", fechaFin: "14-02-1991", elemento: .metal, caracteristicas: "leal, trabajador, gregario, cordial, energico y popular", direccion: .sur, estacion: .verano, periodoEstacion: .medio, animalCompatible1: .tigre, animalCompatible2: .perro),
            Horoscopo(nombre: .cabra, imagen: .cabra, fechaComienzo: "15-02-1991", fechaFin: "03-02-1992", elemento: .metal, caracteristicas: "pacifico, adaptable, honesto, creativo, imaginativo y sincero", direccion: .sur, estacion: .verano, periodoEstacion: .tardio, animalCompatible1: .cerdo, animalCompatible2: .liebre),
            Horoscopo(nombre: .mono, imagen: .mono, fechaComienzo: "04-02-1992", fechaFin: "22-01-1993", elemento: .agua, caracteristicas: "independiente, vivaz, ingenioso, divertido, atrevido e inventivo", direccion: .oeste, estacion: .otoño, periodoEstacion: .temprano, animalCompatible1: .rata, animalCompatible2: .dragon),
            Horoscopo(nombre: .gallo, imagen: .gallo, fechaComienzo: "23-01-1993", fechaFin: "09-02-1994", elemento: .agua, caracteristicas: "valeroso, protector, vistoso, capaz, comunicativo y honesto", direccion: .oeste, estacion: .otoño, periodoEstacion: .medio, animalCompatible1: .serpiente, animalCompatible2: .buey),
            Horoscopo(nombre: .perro, imagen: .perro, fechaComienzo: "10-02-1994", fechaFin: "30-01-1995", elemento: .madera, caracteristicas: "leal, responsable, sensible, moral, fiable e imaginativo", direccion: .oeste, estacion: .otoño, periodoEstacion: .tardio, animalCompatible1: .tigre, animalCompatible2: .caballo),
            Horoscopo(nombre: .cerdo, imagen: .cerdo, fechaComienzo: "31-01-1995", fechaFin: "18-02-1996", elemento: .madera, caracteristicas: "sensual, generoso, alegre, tolerante, feliz y entusiasta", direccion: .norte, estacion: .invierno, periodoEstacion: .temprano, animalCompatible1: .liebre, animalCompatible2: .cabra),
            Horoscopo(nombre: .rata, imagen: .rata, fechaComienzo: "19-02-1996", fechaFin: "07-02-1997", elemento: .fuego, caracteristicas: "ingenioso, ambicioso, trabajador, decidido, laborioso e inteligente", direccion: .norte, estacion: .invierno, periodoEstacion: .medio, animalCompatible1: .dragon, animalCompatible2: .mono),
            Horoscopo(nombre: .buey, imagen: .buey, fechaComienzo: "08-02-1997", fechaFin: "27-01-1998", elemento: .fuego, caracteristicas: "paciente, valeroso, convencional, fiable, resuelto e inteligente", direccion: .norte, estacion: .invierno, periodoEstacion: .tardio, animalCompatible1: .serpiente, animalCompatible2: .gallo),
            Horoscopo(nombre: .tigre, imagen: .tigre, fechaComienzo: "28-01-1998", fechaFin: "15-02-1999", elemento: .tierra, caracteristicas: "leal, responsable, sensible, moral, fiable e imaginativo", direccion: .este, estacion: .primavera, periodoEstacion: .temprana, animalCompatible1: .caballo, animalCompatible2: .perro),
            Horoscopo(nombre: .liebre, imagen: .liebre, fechaComienzo: "16-02-1999", fechaFin: "04-02-2000", elemento: .tierra, caracteristicas: "generoso, intuitivo, tactil, egoista, discreto y sensible", direccion: .este, estacion: .primavera, periodoEstacion: .media, animalCompatible1: .cerdo, animalCompatible2: .cabra),
            Horoscopo(nombre: .dragon, imagen: .dragon, fechaComienzo: "05-02-2000", fechaFin: "23-01-2001", elemento: .metal, caracteristicas: "entusiasta, atrevido, inspirador, ganador, materialista e independiente", direccion: .este, estacion: .primavera, periodoEstacion: .tardio, animalCompatible1: .rata, animalCompatible2: .mono)
        ]
    }
    
    func getHoroscopo(for year: Date) -> Horoscopo? {
        var responseHoroscopo: Horoscopo? = nil
        formatter.dateFormat = "dd-MM-yyyy"
        
        for horoscopo in horoscopoCollection {
            let startDate = formatter.date(from: horoscopo.fechaComienzo)
            let endDate = formatter.date(from: horoscopo.fechaFin)
            if (startDate?.compare(year) == ComparisonResult.orderedAscending ||
                startDate?.compare(year) == ComparisonResult.orderedSame)  &&
                (endDate?.compare(year) == ComparisonResult.orderedDescending ||
                endDate?.compare(year) == ComparisonResult.orderedSame) {
                
                responseHoroscopo = horoscopo
            }
        }
        
        return responseHoroscopo
    }
}
