//
//  Mission.swift
//  Moonshot
//
//  Created by Sergey Petrosyan on 05.03.24.
//

import Foundation

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
}
