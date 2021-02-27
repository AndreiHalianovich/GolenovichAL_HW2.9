//
//  Animation.swift
//  GolenovichAL_HW2.9
//
//  Created by Andrei Halianovich on 26.02.21.
//

import UIKit

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimations() -> Animation {
        let animations = ["shake", "pop", "morph", "squeeze", "swing", "flipX", "flipY", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "flash"]
        let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
        
        return Animation(preset: animations[Int.random(in: 0..<animations.count)],
                         curve: curve[Int.random(in: 0..<curve.count)],
                         force: CGFloat.random(in: 0.3...2),
                         duration: CGFloat.random(in: 1...3),
                         delay: CGFloat.random(in: 0...1))
    }
}
