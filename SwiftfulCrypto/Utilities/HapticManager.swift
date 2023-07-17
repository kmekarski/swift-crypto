//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 16/07/2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
