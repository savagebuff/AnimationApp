//
//  Animation.swift
//  AnimationApp
//
//  Created by Dinar Garaev on 26.11.2021.
//

struct Animation {
    let name: String
    let curve: String
    
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn")
    }
}
