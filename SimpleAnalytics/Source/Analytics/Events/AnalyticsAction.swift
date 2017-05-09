//
//  AnalyticsAction.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// This describes analytics events related to user actions throughout the app.
/// The 'general' event below can be used, but specific action cases should be added
/// below in order to encapsulate action related data for action events all in this
/// enum.
enum AnalyticsAction: AnalyticsEvent {
    
    case general(action: String, label: String, value: Any)
    
    var category: String {
        return "USER_ACTION"
    }
    
    var action: String {
        switch self {
        case .general(let action, _,_):
            return action
        }
    }
    
    var label: String {
        switch self {
        case .general(_, let label, _):
            return label
        }
    }
    
    var value: Any {
        switch self {
        case .general(_, _, let value):
            return value
        }
    }
}
