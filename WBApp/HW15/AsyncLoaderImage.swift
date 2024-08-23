//
//  AsyncLoaderImage.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 01.08.2024.
//

import SwiftUI
import Combine

class AsyncLoaderImage: ObservableObject {
    @Published var image: UIImage? = nil
    var cancellable: AnyCancellable?
    
    init(url: URL?) {
        guard let url = url else { return }
        load(url: url)
    }
    
    func load(url: URL) {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] in self?.image = $0 }
    }
    
    deinit {
        cancellable?.cancel()
    }
}
