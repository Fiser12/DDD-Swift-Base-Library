//
//  StoredEvent.swift
//  Application
//
//  Created by Fiser on 6/5/18.
//

import Foundation

public struct StoredEvent
{
    public private(set) var event:DomainEvent {
        get {
            return self.event
        }
        set(event) {
            self.event = event
        }
    }
    public private(set) var name:StreamName {
        get {
            return self.name
        }
        set(name) {
            self.name = name
        }
    }
    public private(set) var version:StreamVersion {
        get {
            return self.version
        }
        set(version) {
            self.version = version
        }
    }
    public private(set) var type:String {
        get {
            return self.type
        }
        set(version) {
            self.type = type
        }
    }

    init(event:DomainEvent, name:StreamName, version:StreamVersion) {
        self.type = String(describing: event)
        self.event = event
        self.name = name
        self.version = version
    }
}
