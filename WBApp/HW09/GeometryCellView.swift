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
            if alignment == .top || alignment == .bottom {
                VStack {
                    HStack {
                        if alignment == .top { rectangles(2) }
                    }
                    rectangles(1)
                    HStack {
                        if alignment == .bottom { rectangles(2) }
                    }
                }
            } else {
                HStack {
                    VStack {
                        if alignment == .leading { rectangles(2) }
                    }
                    rectangles(1)
                    VStack {
                        if alignment == .trailing { rectangles(2) }
                    }
                }
            }
        }
        .padding(30)
    }
    
    @ViewBuilder
    private func rectangles(_ amount: Int) -> some View {
        let randomColor = Int.random(in: 0...1)
        if amount > 0 {
            ForEach(0..<amount, id: \.self) { _ in
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(style: StrokeStyle(lineWidth: 3, dash: [16, 4]))
                    .foregroundStyle(randomColor == 0 ? .cyan : .black)
            }
        } else {
            EmptyView()
        }
    }
}

#Preview {
    GeometryCellView(alignment: Alignment.top)
}
