//
//  Document.swift
//  Document Scanner
//
//  Created by Pankaj Kumar Rana on 4/16/25.
//

import SwiftUI
import SwiftData

@Model
class Document {
    var name: String
    var createdAt: Date = Date()
    @Relationship(deleteRule: .cascade, inverse: \DocumentPage.document)
    var pages: [DocumentPage]?
    var isLocked: Bool = false
    
    // for zoom Transition
    var uniqueViewID: String = UUID().uuidString
    
    init(name: String, page: [DocumentPage]? = nil) {
        self.name = name
        self.pages = page
    }
}
