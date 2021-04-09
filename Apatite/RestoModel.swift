//
//  RestoModel.swift
//  Apatite
//
//  Created by Jonathan Andrei on 07/04/21.
//

import UIKit

struct Resto {
    let name: String
    let image: UIImage
    let rating: String
}

let restos: [Resto] = [
    Resto(name: "Arborea", image: #imageLiteral(resourceName: "ArboreaResto"), rating: "3.8/5"),
    Resto(name: "Warung Universe", image: #imageLiteral(resourceName: "WarungUniverse"), rating: "4.0/5"),
    Resto(name: "Sakti Dining Rooms - Fivelements", image: #imageLiteral(resourceName: "SaktiDiningRoom"), rating: "4.2/5"),
    Resto(name: "Stay Shady and Relaxed - Parachute", image: #imageLiteral(resourceName: "StayShady"), rating: "3.1/5")
]

