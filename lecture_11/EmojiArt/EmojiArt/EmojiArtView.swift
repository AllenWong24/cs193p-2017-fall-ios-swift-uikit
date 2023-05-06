//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Allen Wong on 2023/5/6.
//

import UIKit

class EmojiArtView: UIView {

    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }

    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
}
