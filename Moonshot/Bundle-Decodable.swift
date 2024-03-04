//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Sergey Petrosyan on 04.03.24.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the Bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the Bundle.")
        }
        
        guard let loaded = try? JSONDecoder().decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) from the Bundle.")
        }
        
        return loaded
    }
}
