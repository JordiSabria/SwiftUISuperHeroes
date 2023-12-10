//
//  SwiftUISuperHeroesApp.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import SwiftUI

@main
struct SwiftUISuperHeroesApp: App {
    @StateObject var vm = SuperHeroesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
