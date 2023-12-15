//
//  SuperHeroeCoverView.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 11/12/23.
//

import SwiftUI

struct SuperHeroeCoverView: View {
    var image: String
    var apodo: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
            .frame(width: 120)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            //.overlay(alignment: .bottom){
                Text(apodo)
                .font(.caption)
                    .bold()
                    .foregroundStyle(.black)
                    
            //}
            
        }
    }
}

#Preview {
    SuperHeroeCoverView(image: "cronos", apodo: "Cronos")
}
