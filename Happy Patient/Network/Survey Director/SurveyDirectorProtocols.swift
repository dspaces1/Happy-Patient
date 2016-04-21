//
//  SurveyDirectorProtocols.swift
//  Happy Patient
//
//  Created by Diego Urquiza on 4/21/16.
//  Copyright © 2016 Diego Urquiza. All rights reserved.
//

import Foundation

protocol SurveyDirectorFacade {
    func getSurvey(withId id: Int, completion: Result<[Survey]> -> Void)
}

protocol SurveyNetworkManagerFacade {
    func getSurvey(withParam param: [String: AnyObject], completion: Result<NSData> -> Void)
}

protocol SurveyBuilderFacade {
    func buildRequest(withDoctorId id: Int) -> [String: AnyObject]
    func buildSurvey(fromData data: NSData) -> [Survey]
}
