//
//  File.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/07.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

struct ResultView {
    
    func printResult(ladderBoard:LadderBoard) {
        
        printPlayerName(players: ladderBoard.players)
        printLadder(ladderBoard: ladderBoard)
    }
    
    private func printPlayerName(players:[Player]) {
        for player in players {
            printEmpty(number: 4 - ((player.nameLength + 1) / 2))
            print(player.name, terminator: "")
        }
        print(" ")
    }
    
    private func printEmpty(number:Int) {
        for _ in 0..<number {
            print(" ", terminator: "")
        }
    }
    
    private func printLadder(ladderBoard:LadderBoard) {
        for i in 0..<ladderBoard.height {
            print("   ", terminator: "")
            for j in 0..<ladderBoard.players.count - 1 {
                print(Ladder.bar.rawValue, terminator: "")
                if ladderBoard.existence[i][j] == true{
                    print(Ladder.existStep.rawValue, terminator: "")
                    continue
                }
                print(Ladder.emptyStep.rawValue, terminator: "")
            }
            print(Ladder.bar.rawValue)
        }
    }
    
    
}
