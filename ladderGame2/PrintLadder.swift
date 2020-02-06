//
//  File.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/07.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

func printLadder(playerNumber:Int, ladderHeight:Int, ladderExistence:[[Bool]]) {
    for i in 0..<ladderHeight {
        for j in 0..<playerNumber - 1 {
            print("ㅣ", terminator: "")
            if ladderExistence[i][j] == true{
                print("---", terminator: "")
                continue
            }
            print("   ", terminator: "")
        }
        print("ㅣ")
    }
}
