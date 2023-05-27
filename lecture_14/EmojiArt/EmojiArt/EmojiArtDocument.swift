//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Allen Wong on 2023/5/27.
//

import UIKit

class EmojiArtDocument: UIDocument {
    
    var emojiArt: EmojiArt?
    
    override func contents(forType typeName: String) throws -> Any {
        return emojiArt?.json ?? Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        if let json = contents as? Data {
            emojiArt = EmojiArt(json: json)
        }
    }
}

