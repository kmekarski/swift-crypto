//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Klaudiusz Mękarski on 17/07/2023.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
