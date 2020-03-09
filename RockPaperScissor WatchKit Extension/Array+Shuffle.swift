//
//  Array+Shuffle.swift
//  RockPaperScissor WatchKit Extension
//
//  Created by Praveen on 09/03/20.
//  Copyright © 2020 Praveen. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count-1))) + i
            guard i != j else { continue }
            self.swapAt(i, j)
        }
    }
}
