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
    }else{
        print(Message.wrongInput.rawValue)
        return
    }
}

func requestInput(message:String) -> String {
    print(message)
    return readLine()!
}

func markLadder(playerNumber:Int, ladderHeight:Int) -> [[Bool]] {
    var ladderExistence:[[Bool]] = Array(repeating: Array(repeating: false, count: playerNumber - 1), count: ladderHeight)
    for i in 0..<ladderHeight{
        for j in 0..<(playerNumber - 1){
            ladderExistence[i][j] = Bool.random()
        }
    }
    return ladderExistence
}

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

playLadderGame()
