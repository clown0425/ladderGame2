//
//  Error.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/08.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

enum InputError: Error {
    case isNotInt
    case unknownError
    
    var description:String{
        switch self {
        case .isNotInt:
            return Message.wrongLadderHeightInput.rawValue
        case .unknownError:
            return "알 수 없는 에러 "
        }
    }
}
