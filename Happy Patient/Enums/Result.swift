//
//  Result.swift
//  Happy Patient
//
//  Created by Diego Urquiza on 4/21/16.
//  Copyright © 2016 Diego Urquiza. All rights reserved.
//

import Foundation

enum Result<T> {
    case Success(data: T)
    case Failure(error: NSError)
}