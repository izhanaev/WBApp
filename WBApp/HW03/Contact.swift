//
//  Contact.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import SwiftUI

struct Contact: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let surname: String?
    let avatar: String?
    let status: Bool
    let story: String?
    let lastSeen: String
}
