//
//  AnalyticsConfig.swift
//  Analytics
//
//  Created by Seth on 2/24/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation


/// Defines an interface for an object providing configuration data
/// to an analytics service.
/// E.G. A Facebook/Google/Flurry/Etc provider ID and secret key
public protocol AnalyticsConfigurationProvider {
    
    /// Describes a provider identifier for an analytics processing service
    var providerId: String { get }
    
    /// Describes a secret key needed to report analytics events for a given service.
    /// If not needed for a particular service it can return an empty string.
    var secretKey: String { get }
}
