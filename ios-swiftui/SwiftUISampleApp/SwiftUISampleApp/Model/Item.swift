//
//  Item.swift
//  SwiftUISampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import Foundation

struct Item: Codable {
    let id: UUID = UUID()
    var name: String
    var value: Int
    var description: String
}
