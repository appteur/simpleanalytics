//
//  AnalyticsAction.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation
import SimpleAnalytics

/// This describes analytics events related to user actions on the login page
/// Add cases for any specific events along with values for those events below.
public enum AnalyticsActionLoginPage: AnalyticsEvent {
    
    case tapLoginButton
    
    public var category: String {
        return "USER_ACTION"
    }
    
    public var action: String {
        switch self {
        case .tapLoginButton:
            return "BUTTON_TAP"
        }
    }
    
    public var label: String {
        switch self {
        case .tapLoginButton:
            return "Login Button"
        }
    }
    
    public var value: Any {
        switch self {
        case .tapLoginButton:
            return "1"
        }
    }
}
