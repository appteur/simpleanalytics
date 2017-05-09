//
//  Analytics.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// This is the main hub for managing multiple analytics services and passing analytics events
/// to the configured services.
class AnalyticsProvider: Analytics {
    
    /// This is a singleton instance for analytics reporting, although it does not have to be.
    public static let shared: Analytics = AnalyticsProvider()
    
    /// Contains the list of services that will be processing analytics events
    var services: [AnalyticsService] = []
    
    /// This should be called on app initialization before firing any analytics events. If it is not called
    /// then no services will be configured and added to our services list, and nothing will happen when an
    /// event is fired by calling the 'log(event:)' function below.
    ///
    /// - Parameter services: A list of services to setup and add to our services list to provide analytics
    /// processing when analytics events are fired.
    func configure(with services: AnalyticsServices...) {
        for service in services {
            self.services.append(service.instance)
        }
    }
    
    
    /// This is the main function that is called for all analytics events. Analytics events passed to this function
    /// get passed to each of the registered services for processing and reporting.
    ///
    /// - Parameter event: An analytics event describing some action or event occurring in the app.
    func log(event: AnalyticsEvent) {
        // pass event to all registered services for processing
        for service in services {
            service.process(event: event)
        }
    }
}
