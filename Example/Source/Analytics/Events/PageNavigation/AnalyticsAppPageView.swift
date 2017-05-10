//
//  AnalyticsPageView.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation
import SimpleAnalytics

/// This describes analytics events that are related to page navigation within the app.
/// Additional pages/cases can be added as needed/desired.
public enum AnalyticsAppPageView: AnalyticsEvent {
    
    case onboardFirstPage
    case onboardSecondPage
    case onboardThirdPage
    case onboardFourthPage
    
    public var category: String {
        return "NAVIGATION"
    }
    
    public var action: String {
        return "PAGE_VIEW"
    }
    
    public var label: String {
        return "Page Name"
    }
    
    public var value: Any? {
        switch self {
        case .onboardFirstPage:
            return "Onboard Intro Page"
        case .onboardSecondPage:
            return "Onboard Movie Page"
        case .onboardThirdPage:
            return "Onboard Keyboard Page"
        case .onboardFourthPage:
            return "Onboard Summary Page"
        }
    }
}
