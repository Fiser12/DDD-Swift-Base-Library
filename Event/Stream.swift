
//
//  Stream.swift
//  Application
//
//  Created by Fiser on 6/5/18.
//

import Foundation

public struct Stream
{
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

    public private(set) var events:[DomainEvent] {
        get {
            return self.events
        }
        set(events) {
            self.events = events
        }
    }
    
    init(name:StreamName, version:StreamVersion, events:[DomainEvent]) {
        self.name = name;
        self.version = version;
        self.events = events;
    }
}

public struct StreamName
{
    public private(set) var name:String? {
        get {
            return self.name
        }
        set(name) {
            self.name = name
        }
    }
    public private(set) var id:Id  {
        get {
            return self.id
        }
        set(id) {
            self.id = id
        }
    }
    
    init(name:String, id:Id) {
        self.name = name;
        self.id = id;
    }
    
    private func checkNameIsValid(name:String) throws {
        if(name.isEmpty) {
            throw StreamError.streamNameIsEmpty()
        }
    }

    init(id:Id) {
        self.id = id;
    }
}

public struct StreamVersion
{
    public private(set) var version:UInt8
    
    init(version:UInt8) {
        self.version = version;
    }
}

enum StreamError: Error {
    case streamNameIsEmpty()
}
