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
public enum AnalyticsErrorEvent: AnalyticsEvent {
    
    case genericError(action: String, label: String, value: Any)
    
    public var category: String {
        return "GENERIC ERROR"
    }
    
    public var action: String {
        switch self {
        case .genericError(let action, _, _):
            return action
        }
    }
    
    public var label: String {
        switch self {
        case .genericError(_, let label, _):
            return label
        }
    }
    
    public var value: Any? {
        switch self {
        case .genericError(_, _, let value):
            return String(describing: value)
        }
    }
}
