//
//  ContactModel.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import Foundation

struct ContactModel: Hashable, Identifiable {
    let id: Int
    let name: String
    let surname: String
    let avatar: URL?
    let status: Bool
    let story: Bool
    let lastSeen: Date
    let phoneNumber: String
}
