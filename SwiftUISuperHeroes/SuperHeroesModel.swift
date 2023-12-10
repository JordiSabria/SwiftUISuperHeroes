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
