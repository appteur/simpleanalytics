//
//  Analytics.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation


/**
    Defines an interface for an object providing analytics reporting ability.
    A conforming object should be able to take and process an AnalyticsEvent,
    or pass the event to an analytics reporting service to handle.
 
 */
protocol Analytics {
    
    /// Provides top level processing for analytics events.
    ///
    /// - Parameter event: An object containing enough analytics data to report app events to a listening service.
    func log(event: AnalyticsEvent)
    
    
    /// Takes a list of services to configure and handle analytics event reporting. This list can include
    /// services like Google/Facebook/Flurry/etc.
    ///
    /// - Parameter services: A list of services that will be setup to process analytics events.
    func configure(with services: AnalyticsServices...)
}

