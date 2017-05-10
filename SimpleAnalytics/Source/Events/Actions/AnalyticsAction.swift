//
//  AnalyticsAction.swift
//  SimpleAnalytics
//
//  Created by Seth on 5/9/17.
//
//

import Foundation

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
    
    public var value: Any? {
        switch self {
        case .general(_, _, let value):
            return value
        }
    }
}
