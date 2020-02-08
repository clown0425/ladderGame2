//
//  convertor.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/08.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct Convertor {
    
    func convertToPlayer(inputplayerName:String) -> [Player] {
        let playerNames = inputplayerName.split(separator: ",").map(String.init)
        var players = [Player]()
        
        for playerName in playerNames {
            players.append(Player(playerName: playerName))
        }
        
        return players
    }
    
    func convertToLadderHeight(inputLadderHeight:String) throws -> Int {
        
        if let ladderHeight = Int(inputLadderHeight) {
            return ladderHeight
        }
        
        throw InputError.isNotInt
    }
}
