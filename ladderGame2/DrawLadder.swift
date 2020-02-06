//
//  DrawLadder.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/07.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

func markLadder(playerNumber:Int, ladderHeight:Int) -> [[Bool]] {
    
    var ladderExistence:[[Bool]] = Array(repeating: Array(repeating: false, count: playerNumber - 1), count: ladderHeight)
    
    for i in 0..<ladderHeight{
        ladderExistence[i][0] = Bool.random()
        for j in 1..<(playerNumber - 1){
            if ladderExistence[i][j-1] == false {
               ladderExistence[i][j] = Bool.random()
            }
        }
    }
    
    return ladderExistence
}
