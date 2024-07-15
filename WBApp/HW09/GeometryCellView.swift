//
//  GeometryCellView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 15.07.2024.
//

import SwiftUI

struct GeometryCellView: View {
    let alignment: Alignment
    
    var body: some View {
        Group {
            HStack {
                VStack {
                    rectangles(2)
                }
                rectangles(1)
                    .foregroundStyle(.red)
            }
        }
    }
    
    @ViewBuilder
    private func rectangles(_ amount: Int) -> some View {
        if amount > 0 {
            ForEach(0..<amount, id: \.self) { _ in
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(style: StrokeStyle(lineWidth: 3, dash: [16, 4]))
            }
        } else {
            EmptyView()
        }
    }
}

#Preview {
    GeometryCellView(alignment: Alignment.top)
}
