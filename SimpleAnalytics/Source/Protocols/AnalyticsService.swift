//
//  AnalyticsService.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// Defines the interface an analytics service must conform to in order to receive app analytics events
/// for processing.  Generally this function is called on the service by the AnalyticsProvider, which
/// manages the services.
protocol AnalyticsService {
    func process(event: AnalyticsEvent)
}
