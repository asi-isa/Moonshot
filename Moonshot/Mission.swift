//
//  Mission.swift
//  Moonshot
//
//  Created by Ali Soner Inceoglu on 29.11.25.
//

import Foundation

struct Mission: Identifiable, Codable {
    struct CrewMember: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewMember]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
