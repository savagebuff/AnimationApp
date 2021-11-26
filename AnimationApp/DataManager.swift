//
//  DataManager.swift
//  AnimationApp
//
//  Created by Dinar Garaev on 26.11.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
}
