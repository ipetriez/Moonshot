//
//  Astronaut.swift
//  Moonshot
//
//  Created by Sergey Petrosyan on 04.03.24.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
