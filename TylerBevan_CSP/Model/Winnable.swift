//
//  Winnable.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 11/20/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import Foundation
public protocol Winnable
{
    var difficulty : Int {get set}
    func isWinnable() -> Bool
    func addDifficulty() -> Void
}
