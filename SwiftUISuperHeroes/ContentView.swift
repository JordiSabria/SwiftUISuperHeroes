//
//  ContentView.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: SuperHeroesViewModel
    
    let itemAdaptative = GridItem(.adaptive(minimum: 110), spacing: 0)
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: [itemAdaptative]) {
                    ForEach(vm.superHeroes){ superheroe in
                        NavigationLink(value: superheroe) {
                            SuperHeroeCoverView(image: superheroe.imagen, apodo: superheroe.apodo)
                        }
                    }
                }
                .padding(3)
            }
            .navigationTitle("Super Heroes")
            .navigationDestination(for: SuperHeroes.self){ superheroe in
                SuperHeroeDetailView(superheroe: superheroe)
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        
                    }label: {
                        Image(systemName: "star.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
       .environmentObject(SuperHeroesViewModel())
        
}
