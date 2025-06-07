//
//  Issue.swift
//  HelpMe
//
//  Created by richard Haynes on 6/7/25.
//

import Foundation
struct Issue : Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let createdBy: String
    let assignedTo: String?
}
