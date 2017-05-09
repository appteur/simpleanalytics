//
//  AnalyticsErrorEvent.swift
//  Analytics
//
//  Created by Seth on 2/24/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// This describes analytics events related to errors that occur within the app
/// that are desired to be reported to an analytics service.
enum AnalyticsErrorEvent: AnalyticsEvent {
    
    case apiError(description: String)
    case logicError(description: String)
    
    
    var category: String {
        return "ERROR"
    }
    
    var action: String {
        return "ERROR"
    }
    
    var label: String {
        return "Error Description"
    }
    
    var value: Any {
        switch self {
        case .logicError(let description):
            return "\(description)"
        case .apiError(let description):
            return "\(description)"
        }
    }
}
