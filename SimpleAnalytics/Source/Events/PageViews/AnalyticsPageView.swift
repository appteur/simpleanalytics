//
//  AnalyticsPageView.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// This describes analytics events that are related to page navigation within the app.
/// Additional pages/cases can be added as needed/desired.
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
    
    public var value: Any {
        switch self {
        case .named(_, let value):
            return String(describing: value)
        }
    }
}
