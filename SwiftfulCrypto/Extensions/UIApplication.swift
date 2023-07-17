//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 15/07/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
