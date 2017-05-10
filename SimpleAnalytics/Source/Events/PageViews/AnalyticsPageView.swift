//
//  AnalyticsPageView.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/** 
    This describes analytics events that are related to page navigation within the app.
    This enum provides general event reporting related to page views. If desired you can create
    an enum that conforms to AnalyticsEvent and provide detailed cases for each page.
 
    Example:
 
    enum MyAppPagesAnalytics {
        case login
        case signup
 
        // implement vars category/action/label/value
    }
 
    Then you can report those events by calling MyAppPagesAnalytics.login.log() to fire analytics events.
 */
public enum AnalyticsPageView: AnalyticsEvent {
    
    // takes page name and any value to pass with it
    case named(String, value: Any)
    
    public var category: String {
        return "NAVIGATION"
    }
    
    public var action: String {
        return "PAGE_VIEW"
    }
    
    public var label: String {
        switch self {
        case .named(let name, _):
            return name
        }
    }
    
    public var value: Any? {
        switch self {
        case .named(_, let value):
            return String(describing: value)
        }
    }
}
