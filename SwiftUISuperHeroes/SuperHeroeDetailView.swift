//
//  SuperHeroeDetailView.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 11/12/23.
//

import SwiftUI

struct SuperHeroeDetailView: View {
    let superheroe: SuperHeroes
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image(superheroe.imagen)
                    .resizable()
                    .scaledToFit()
                InfoLineView(titulo: "Nombre real:", descripcion: superheroe.nombreReal)
                InfoLineView(titulo: "Edad:", descripcion: "\(superheroe.edad) años")
                Text("Poderes:")
                    .foregroundStyle(.blue)
                ForEach(superheroe.poderes){poder in
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        Text(poder.rawValue)
                            .padding([.leading, .trailing], 8)
                            .padding([.top,.bottom], 4)
                    }
                }
                InfoLineView(titulo: "Descripción:", descripcion: superheroe.descripcion)
                Spacer()
            }
            .padding(8)
        }
        .navigationTitle(superheroe.apodo)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    SuperHeroeDetailView(superheroe: .test)
}
