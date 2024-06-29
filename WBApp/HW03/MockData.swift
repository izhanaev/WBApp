//
//  MockData.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.06.2024.
//

import Foundation

struct MockData {
    static let contacts: [ContactModel] = [
        .init(id: 1, name: "Анастасия", surname: "Иванова", avatar: "Person1", status: false, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 2, name: "Петя", surname: "", avatar: "Person2", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 3, name: "Маман", surname: "", avatar: "Person3", status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 4, name: "Арбуз", surname: "Дыня", avatar: "Person4", status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 5, name: "Иван", surname: "Иванов", avatar: nil, status: true, story: false, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"),
        .init(id: 6, name: "Лиса", surname: "Алиса", avatar: nil, status: false, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35")
    ]
}
