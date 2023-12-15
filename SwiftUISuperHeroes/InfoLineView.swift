//
//  infoLineView.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 14/12/23.
//

import SwiftUI

struct InfoLineView: View {
    let titulo: String
    let descripcion: String
    var body: some View {
        HStack(alignment:.top){
            Text(titulo)
                .foregroundStyle(.blue)
                .padding(.top , 4)
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                Text(descripcion)
                    .padding([.leading, .trailing], 8)
                    .padding([.top,.bottom], 4)
            }
        }
    }
}

#Preview {
    InfoLineView(titulo: "Nombre Real:", descripcion: "Isabel Ruiz")
}
