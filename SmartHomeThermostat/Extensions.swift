//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Luciano Lima Ferreira on 28/05/22.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomLeading) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
