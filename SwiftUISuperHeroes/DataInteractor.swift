//
//  DataInteractor.swift
//  SwiftUISuperHeroes
//
//  Created by Jordi Sabrià Pagès on 10/12/23.
//

import Foundation

protocol Interactor {
    var urlBundle: URL { get }
    var docURL: URL { get }
    
    func loadData<T>() throws -> T where T: Codable
    func saveData<T>(json: T) throws where T: Codable
}

extension Interactor {
    func loadData<T>() throws -> T where T: Codable {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = urlBundle
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
    
    func saveData<T>(json: T) throws where T: Codable {
        let data = try JSONEncoder().encode(json)
        try data.write(to: docURL, options: .atomic)
    }
}

struct DataInteractor: Interactor {
    let urlBundle = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json")!
    let docURL = URL.documentsDirectory.appending(path: "SuperHeroes.json")
}
