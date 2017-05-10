//
//  AnalyticsEventImp.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// This describes analytics events related to the app lifecycle.
public enum AnalyticsAppEvent: AnalyticsEvent {
    
    case didLaunch
    case willResignActive
    case didEnterBackground
    case willEnterForeground
    case didBecomeActive
    case willTerminate
    
    case systemEvent(name: String)
    
    public var category: String {
        return "APP"
    }
    
    public var action: String {
        return "SYSTEM"
    }
    
    public var label: String {
        return "LIFECYCLE"
    }
    
    public var value: Any? {
        switch self {
        case .didLaunch:
            return "Launched"
        case .willResignActive:
            return "Resigning Active"
        case .didEnterBackground:
            return "Entered Background"
        case .willEnterForeground:
            return "Entering Foreground"
        case .didBecomeActive:
            return "Became Active"
        case .willTerminate:
            return "Terminating"
        case .systemEvent(let name):
            return "\(name)"
        }
    }
}
