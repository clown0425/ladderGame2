//
//  message.swift
//  ladderGame2
//
//  Created by 이희찬 on 2020/02/05.
//  Copyright © 2020 이희찬. All rights reserved.
//

import Foundation

enum Message: String{
    case requestPlayerNumber = "플레이어 수를 입력하세요"
    case requestLadderHeight = "사다리 높이를 입력하세요"
    case wrongInput = "플레이어 숫자와 사다리 높이를 양의정수로 입력해주세요"
}
