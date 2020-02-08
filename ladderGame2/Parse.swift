//
//  convertor.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/08.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct Parse {
    
    func convertToLadderBoard(userInput:(String, String)) throws -> LadderBoard {
        
        let players = convertToPlayer(inputplayerName: userInput.0)
        let ladderHeight = try convertToLadderHeight(inputLadderHeight: userInput.1)
        let ladderExistence = markLadder(playerNumber: players.count, ladderHeight: ladderHeight)
        
        return LadderBoard(parsedInput: (players, ladderHeight, ladderExistence))
    }
    
    private func markLadder(playerNumber:Int, ladderHeight:Int) -> [[Bool]] {
        
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
    
    private func convertToPlayer(inputplayerName:String) -> [Player] {
        let playerNames = inputplayerName.split(separator: ",").map(String.init)
        var players = [Player]()
        
        for playerName in playerNames {
            players.append(Player(playerName: playerName))
        }
        
        return players
    }
    
    private func convertToLadderHeight(inputLadderHeight:String) throws -> Int {
        
        if let ladderHeight = Int(inputLadderHeight) {
            return ladderHeight
        }
        
        throw InputError.isNotInt
    }
}
