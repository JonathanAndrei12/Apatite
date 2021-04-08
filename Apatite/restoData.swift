//
//  restoData.swift
//  Apatite
//
//  Created by Jessica Wienadi on 07/04/21.
//

import UIKit

struct Resto {
    let name: String
    let image: UIImage
    let rating: String
}

let restos: [Resto] = [
    Resto(name: "Bu De Resto", image: #imageLiteral(resourceName: "restaurant1"),rating: "3.5/5"),
    Resto(name: "Warung Enak", image: #imageLiteral(resourceName: "restaurant1"),rating: "4/5"),
    Resto(name: "El Resto Italia", image: #imageLiteral(resourceName: "restaurant1"),rating: "3.9/5"),
    Resto(name: "Warung Universe", image: #imageLiteral(resourceName: "restaurant1"),rating: "5/5"),
    Resto(name: "Pablo's Canggu", image: #imageLiteral(resourceName: "restaurant1"),rating: "4.4/5"),
  
]

struct Menu {
    let name: String
    let image: UIImage
    let price: String
}

let menus: [Menu] = [
    Menu(name: "Soto Padang", image: #imageLiteral(resourceName: "foodMenu1"),price: "Rp 50.000"),
    Menu(name: "Beef Satay with Tropical Fruit", image: #imageLiteral(resourceName: "foodMenu1"),price: "Rp 40.000"),
    Menu(name: "Rendang Sapi", image: #imageLiteral(resourceName: "foodMenu1"),price: "Rp 50.000"),
    Menu(name: "Veggie Sushi with Tabasco Sauce", image: #imageLiteral(resourceName: "foodMenu1"),price: "Rp 35.000"),
    Menu(name: "Pepperoni Pan Pizza", image: #imageLiteral(resourceName: "foodMenu1"),price: "Rp 80.000"),
  
]
