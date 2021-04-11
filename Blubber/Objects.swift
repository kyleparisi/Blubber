//
//  Objects.swift
//  Blubber
//
//  Created by Kyle Parisi on 3/1/20.
//  Copyright © 2020 te0. All rights reserved.
//

import Foundation

struct Garage: Codable {
    var door: Int
    var is_open: Bool?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        door = try container.decode(Int.self, forKey: .door)
        is_open = door == 0 ? false : true
    }
}
