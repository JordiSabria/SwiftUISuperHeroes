//
//  ContentView.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: SuperHeroesViewModel
    
    var body: some View {
        List {
            ForEach (vm.superHeroes) { superHero in
                Text(superHero.descripcion)
            }
        }
    }
}

#Preview {
    ContentView()
       .environmentObject(SuperHeroesViewModel())
        
}
