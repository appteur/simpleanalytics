//
//  AnalyticsServices.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Seth. All rights reserved.
//

import Foundation

/// This is a convenience class to contain and provide all services that can be called on
/// to provide analytics event processing. To setup a new service, add a case to the enum
/// and set it up to return in the 'instance' var. If needed a configuration entry can be
/// added to the AnalyticsConfiguration enum to provide configuration details when instantiating
/// the service class.
enum AnalyticsServices {
    
    case facebook
    case flurry
    case google
    case parse
    case simple
    
    var instance: AnalyticsService {
        switch self {
        case .facebook:
            return FacebookAnalyticsService.init(config: AnalyticsConfiguration.facebook)
        case .flurry:
            return FlurryAnalyticsService.init(config: AnalyticsConfiguration.flurry)
        case .google:
            return GoogleAnalyticsService.init(config: AnalyticsConfiguration.google)
        case .parse:
            return ParseAnalyticsService.init(config: AnalyticsConfiguration.parse)
        case .simple:
            return SimpleLoggingService()
        }
    }
    
}
