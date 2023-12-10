//
//  SuperHeroesViewModel.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import SwiftUI

final class SuperHeroesViewModel: ObservableObject{
    
    let interactor: Interactor
    
    @Published var superHeroes: [SuperHeroes] = []
    
    init(interactor: Interactor = DataInteractor()) {
        self.interactor = interactor
        do {
            superHeroes = try interactor.loadData()
        } catch {
            print(error)
            superHeroes = []
        }
    }
    
}
