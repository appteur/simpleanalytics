//
//  GoogleService.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Seth. All rights reserved.
//

import Foundation
import SimpleAnalytics

/// Contains and defines any actions or configurations that should happen in order
/// to report analytics events to the Google Analytics SDK.
class GoogleAnalyticsService: AnalyticsService {
    
    var tracker: GAITracker?
    
    init(config: AnalyticsConfigurationProvider) {
        if let gai = GAI.sharedInstance() {
            gai.trackUncaughtExceptions = true  // report uncaught exceptions
            
            // if not release mode
            #if DEBUG
                gai.logger.logLevel = .verbose
                gai.dispatchInterval = 1
            #endif
            
            if config.providerId.isEmpty == false {
                // initialize tracker with google identifier
                tracker = gai.tracker(withTrackingId: config.providerId)
            } else {
                // initialize default tracker
                tracker = gai.defaultTracker
            }
            
            tracker?.allowIDFACollection = true
        }
    }
    
    func process(event: AnalyticsEvent) {
        
        if let event = event as? AnalyticsPageView {
            processPageView(event: event)
            return
        }
        
        if let tracker = tracker {
            let build = GAIDictionaryBuilder.createEvent(
                withCategory: event.category,
                action: event.action,
                label: event.label,
                value: 0).build() as [NSObject : AnyObject]
            tracker.send(build)
        }
    }
    
    internal func processPageView(event: AnalyticsPageView) {
        
        if let tracker = tracker {
            tracker.set(kGAIScreenName, value: "\(event.value)")
            let build = GAIDictionaryBuilder.createScreenView().build() as [NSObject : AnyObject]
            tracker.send(build)
        }
    }
}
