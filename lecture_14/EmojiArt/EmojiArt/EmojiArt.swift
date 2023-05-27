//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Allen Wong on 2023/5/27.
//

import Foundation

struct EmojiArt {
    var url: URL
    var emojis = [EmojiInfo]()
    
    struct EmojiInfo {
        let x: Int
        let y: Int
        let text: String
        let size: Int
    }
    
    init(url: URL, emojis: [EmojiInfo] = [EmojiInfo]()) {
        self.url = url
        self.emojis = emojis
    }
}
