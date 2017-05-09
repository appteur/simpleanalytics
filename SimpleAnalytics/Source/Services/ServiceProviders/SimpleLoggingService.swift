//
//  SimpleLoggingService.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation

/// Contains and defines any actions or configurations that should happen in order
/// to report analytics events in the debugger console.
class SimpleLoggingService: AnalyticsService {
    
    func process(event: AnalyticsEvent) {
        print("ANALYTICS EVENT: [Category: \(event.category)] - [Action: \(event.action)] - [Label: \(event.label)] - [Value: \(event.value)]")
    }
}
