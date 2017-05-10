//
//  AnalyticsEvent.swift
//  Analytics
//
//  Created by Seth on 2/23/17.
//  Copyright © 2017 Arnott Industries, Inc. All rights reserved.
//

import Foundation


/// Describes values that any given analytics event should have for proper reporting of analytics events
/// to analytics processing services. In some cases not all fields might be used and passing empty strings
/// or values is acceptable.
public protocol AnalyticsEvent {
    var category: String { get }
    var action: String { get }
    var label: String { get }
    var value: Any? { get }
    
    func log()
    func toDictionary() -> [String : Any]
    func toString() -> String
}

public extension AnalyticsEvent {
    
    /// Since we're currently using an analytics singleton object for reporting, we implement a default 'log()'
    /// function here. In this way we can call MyEventName.log() and the call will automatically be fired off
    /// to the analytics processing object for distribution to any services that are setup to handle events.
    func log() {
        AnalyticsProvider.shared.log(event: self)
    }
    
    
    /// Default implementation to convert to a dictionary for sending as json in requests back to any service
    /// providing analytics event processing.
    ///
    /// - Returns: Converts the object to a dictionary representation.
    func toDictionary() -> [String : Any] {
        var dict = [
            "category" : category,
            "action" : action,
            "label" : label
        ]
        if let value = value {
            dict["value"] = String(describing:value)
        }
        return dict
    }
    
    func toString() -> String {
        var stringVers = "\(category)-\(action)-\(label)"
        if let value = value {
            stringVers = stringVers+"-"+String(describing:value)
        }
        return stringVers
    }
}
