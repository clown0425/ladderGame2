//
//  Input.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/07.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct InputView {
    
    func requestLadderGameData() -> (String, String) {
        
        let playerName = request(.playerName)
        let ladderHeight = request(.ladderHeight)
        
        return (playerName, ladderHeight)
    }
    
    func request(_ message:Message) -> String {
        print(message.rawValue)
        return readLine()!
    }
    
}
