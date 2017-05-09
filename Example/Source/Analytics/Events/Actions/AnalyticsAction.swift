//
//  AnalyticsAction.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation
import SimpleAnalytics

/// This describes analytics events related to user actions throughout the app.
/// The 'general' event below can be used, but specific action cases should be added
/// in order to encapsulate action related data for action events.
public enum AnalyticsAction: AnalyticsEvent {
    
    case general(action: String, label: String, value: Any)
    
    public var category: String {
        return "USER_ACTION"
    }
    
    public var action: String {
        switch self {
        case .general(let action, _,_):
            return action
        }
    }
    
    public var label: String {
        switch self {
        case .general(_, let label, _):
            return label
        }
    }
    
    public var value: Any {
        switch self {
        case .general(_, _, let value):
            return value
        }
    }
}
