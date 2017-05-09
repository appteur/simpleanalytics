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
        return "APP_EVENT"
    }
    
    public var action: String {
        return "SYSTEM_ACTION"
    }
    
    public var label: String {
        return "App Event"
    }
    
    public var value: Any {
        switch self {
        case .didLaunch:
            return "Application Did Launch"
        case .willResignActive:
            return "Application Will Resign Active"
        case .didEnterBackground:
            return "Application Did Enter Background"
        case .willEnterForeground:
            return "Application Will Enter Foreground"
        case .didBecomeActive:
            return "Application Did Become Active"
        case .willTerminate:
            return "Application Will Terminate"
        case .systemEvent(let name):
            return "\(name)"
        }
    }
}
