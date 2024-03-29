//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Allen Wong on 2023/5/27.
//

import Foundation

struct EmojiArt: Codable {
    var url: URL?
    var imageData: Data?
    var emojis = [EmojiInfo]()
    
    struct EmojiInfo: Codable {
        let x: Int
        let y: Int
        let text: String
        let size: Int
    }
    
    init?(json: Data) {
        if let newValue = try? JSONDecoder().decode(EmojiArt.self, from: json) {
            self = newValue
        } else {
            return nil
        }
    }
    
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init(url: URL, emojis: [EmojiInfo] = [EmojiInfo]()) {
        self.url = url
        self.emojis = emojis
    }
    
    init(imageData: Data, emojis: [EmojiInfo] = [EmojiInfo]()) {
        self.imageData = imageData
        self.emojis = emojis
    }
}
