//
//  AstronautView.swift
//  Moonshot
//
//  Created by Ali Soner Inceoglu on 30.11.25.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
            
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let astronaut = astronauts.values.first ?? Astronaut(id: "buzzaldrin", name: "Buzz Aldrin", description: "Preview fallback astronaut.")

    NavigationStack {
        AstronautView(astronaut: astronaut)
            .preferredColorScheme(.dark)
    }
}
