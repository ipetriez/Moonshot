//
//  ContentView.swift
//  Moonshot
//
//  Created by Sergey Petrosyan on 03.03.24.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text("\(astronauts.count)")
    }
}

#Preview {
    ContentView()
}
