//
//  Game.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 11/20/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import Foundation
public class Game : Winnable
{
    //MARK: winnable methods
    public var difficulty: Int = 8;
    public func isWinnable() -> Bool
    {
        return (difficulty <= 10)
    }
    public func addDifficulty()
    {
        difficulty += 1;
    }
}
