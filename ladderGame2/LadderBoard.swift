//
//  LadderBoard.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/08.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct LadderBoard {
    init(parsedInput:([Player], Int, [[Bool]])) {
        players.self = parsedInput.0
        Height.self = parsedInput.1
        Existence.self = parsedInput.2
    }
    let players:[Player]
    let Height:Int
    let Existence:[[Bool]]
}
