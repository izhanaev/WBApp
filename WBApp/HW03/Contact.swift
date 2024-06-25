//
//  Contact.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import Foundation

struct Contact: Hashable, Identifiable {
    let id: Int
    let name: String
    let surname: String
    let avatar: String?
    let status: Bool
    let story: Bool
    let lastSeen: Date
    let phoneNumber: String
}
