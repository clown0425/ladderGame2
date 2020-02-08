//
//  File.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/08.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct Player {
    var name:String
    var nameLength:Int
    
    init(playerName:String) {
        name.self = playerName
        nameLength.self = playerName.count
    }
}
