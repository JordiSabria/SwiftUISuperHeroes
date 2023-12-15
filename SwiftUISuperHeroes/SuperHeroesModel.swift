//
//  SuperHeroesModel.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import Foundation

struct SuperHeroes: Codable, Identifiable, Hashable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String
    let edad: Int
    let poderes: [Poderes]
    let imagen: String
    
}
 
extension SuperHeroes{
    static let test = SuperHeroes(id: "f0c6b58f-4d8a-4b8c-8d2a-12b4834e0a98", nombreReal: "Juan Martínez", apodo: "TeleMente", descripcion: "Después de un accidente en un laboratorio de neurociencia, Juan adquirió la capacidad de leer y manipular pensamientos.", edad: 32, poderes: [.telepatia], imagen: "telemente")
}
