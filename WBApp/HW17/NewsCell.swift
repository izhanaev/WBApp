//
//  NewsCell.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 23.08.2024.
//

import SwiftUI

struct NewsCell: View {
    var title: String
    var desc: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(12)
                .foregroundStyle(.monoDefaultWB)
            VStack{
                Text(title).font(.headline)
                    .foregroundStyle(.whiteTextWB)
                Spacer().frame(height: 12)
                Text(desc).font(.caption)
                    .foregroundStyle(.whiteTextWB)
            }
            .padding()
        }
    }
}
