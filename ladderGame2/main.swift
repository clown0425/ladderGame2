//
//  main.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/05.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

func playLadderGame(){
    
    let InputPlayerNumber = requestInput(message: Message.requestPlayerNumber.rawValue)
    let InputLadderHeight = requestInput(message: Message.requestLadderHeight.rawValue)
    
    if let playerNumber = Int(InputPlayerNumber), let ladderHeight = Int(InputLadderHeight) {
        let ladderExistence = markLadder(playerNumber: playerNumber, ladderHeight: ladderHeight)
        printLadder(playerNumber: playerNumber, ladderHeight: ladderHeight, ladderExistence: ladderExistence)
        return
    }
    print(Message.wrongInput.rawValue)
    return
}

playLadderGame()
