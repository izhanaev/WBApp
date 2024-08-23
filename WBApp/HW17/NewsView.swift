//
//  NewsView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 09.08.2024.
//

import SwiftUI
import NewsAPI
import UISystem

struct NewsView: View {
    
    @State var articles: Articles = .init()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(articles.articles) { art in
                    NewsCell(title: art.title ?? "NO TITLE",
                             desc: art.description ?? "NO DESC")
                    .listRowBackground(Color.backgroundWB)
                }
                .listStyle(PlainListStyle())
                .background(Color.backgroundWB)
            }
            .padding(.top, 12)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavBarCustomName(titleNavBar: NSLocalizedString("news", comment: ""), bgColor: .mainTextWB)
                }
            }
            .background(Color.backgroundWB)
            .task {
                articles.loadNews { data, error in
                    articles.articles.append(contentsOf: data?.articles ?? [])
                }
            }
        }
    }
}

struct Articles {
    
    var articles: [Article] = []
    
    init() {}
    
    mutating func loadNews(complete: @escaping (_ data: ArticleList?, _ error: Error?) -> Void) {
        ArticlesAPI.everythingGet(q: "iPhone 17",
                                  from: "2024-08-01",
                                  sortBy: "publishedAt",
                                  language: "en",
                                  apiKey: "0d50c1badb6e41fd9f1699a056829743") { data, error in
            complete(data, error)
        }
    }
}

#Preview {
    NewsView()
}
