//
//  AnalyticsConfiguration.swift
//  Analytics
//
//  Created by Seth on 5/8/17.
//  Copyright © 2017 Seth. All rights reserved.
//

import Foundation

/// This defines configuration data that may be needed in an analytics service provider
/// in order to effectively report analytics events back to the service dashboard.
/// For instance, Google/Facebook/Flurry/etc may require providerId's or secretKey's in
/// order to report events. Those identifiers or configuration details should be added to
/// this enum to encapsulate configuration requirements.
enum AnalyticsConfiguration: AnalyticsConfigurationProvider {
    case google
    case facebook
    case firebase
    case flurry
    case parse
    
    var providerId: String {
        switch self {
        case .google:   return "google identifier"
        case .facebook: return "facebook identifier"
        case .firebase: return "firebase identifier"
        case .flurry:   return "flurry identifier"
        case .parse:    return "parse identifier"
        }
    }
    
    var secretKey: String {
        switch self {
        default: return ""
        }
    }
}
