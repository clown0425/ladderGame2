//
//  main.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/05.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

func playLadderGame(){
    
    let userInput = InputView().requestLadderGameData()
    do {
        let ladderBoard = try Parse().convertToLadderBoard(userInput: (userInput.0, userInput.1))
        ResultView().printResult(ladderBoard: ladderBoard)
    } catch let error as InputError {
        print(error.description)
    }catch{
        print(InputError.unknownError.description)
    }
    
}

playLadderGame()
