//
//  SurveyDirector.swift
//  Happy Patient
//
//  Created by Diego Urquiza on 4/21/16.
//  Copyright © 2016 Diego Urquiza. All rights reserved.
//

import Foundation

class SurveyDirector: SurveyDirectorFacade {
    
    let networkManager: SurveyNetworkManagerFacade
    let builder: SurveyBuilderFacade
    
    init(networkManager: SurveyNetworkManagerFacade, builder: SurveyBuilderFacade) {
        self.networkManager = networkManager
        self.builder = builder
    }
    
    func getSurvey(withId id: Int, completion: Result<[Survey]> -> Void) {
        let requestParam = builder.buildRequest(withDoctorId: id)
        networkManager.getSurvey(withParam: requestParam) { result in
            switch result {
            case .Success(let data):
                let surveyModel = self.builder.buildSurvey(fromData: data)
                completion(.Success(data: surveyModel))
            case .Failure(let error):
                completion(.Failure(error: error))
            }
        }
    }
}

extension SurveyDirector {
    
    class func getDefaultSurveyDirector() -> SurveyDirector {
        let networkManager = SurveyNetworkManager()
        let builder = SurveyBuilder()
        
        return SurveyDirector(networkManager: networkManager, builder: builder)
    }
}