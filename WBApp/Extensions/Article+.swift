//
//  Article+.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 23.08.2024.
//

import SwiftUI
import NewsAPI

extension Article: Identifiable {
    public var id: String { url }
}
