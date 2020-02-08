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
        height.self = parsedInput.1
        existence.self = parsedInput.2
    }
    let players:[Player]
    let height:Int
    let existence:[[Bool]]
}
