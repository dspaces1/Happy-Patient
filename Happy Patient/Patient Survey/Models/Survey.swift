//
//  Survey.swift
//  Happy Patient
//
//  Created by Diego Urquiza on 4/21/16.
//  Copyright © 2016 Diego Urquiza. All rights reserved.
//

import Foundation

struct Survey {
    
    let rating: Int
    let patientName: String
    let feedback: String
    
    init(rating: Int, patientName: String, feedback: String) {
        self.rating = rating
        self.patientName = patientName
        self.feedback = feedback
    }
}
