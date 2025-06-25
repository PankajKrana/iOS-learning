//
//  QuoteModel.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/25/25.
//


import Foundation

// MARK: - WelcomeElement
struct QuoteModel: Codable {
    let id, content, author: String
    let tags: [String]
    let authorSlug: String
    let length: Int
    let dateAdded, dateModified: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case content, author, tags, authorSlug, length, dateAdded, dateModified
    }
    
    static func defaultQuote() -> QuoteModel {
        return QuoteModel(
            id: "IARxwjpiXK",
            content: "I had three chairs in my house; one for solitude, two for friendship, three for society.",
            author: "Henry David Thoreau",
            tags: [
                "Friendship"
              ],
            authorSlug: "henry-david-thoreau",
            length: 88,
            dateAdded: "2019-08-08",
            dateModified: "2023-04-14"
        )
    }
}


typealias Welcome = [QuoteModel]

