//
//  DomainEvent.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//
import Foundation

public protocol DomainEvent
{
    func ocurredOn() -> Date
}

public struct PublishableDomainEvent : DomainEvent
{
    public private(set) var aggregateId:Id
    public private(set) var name:String
    public private(set) var event:DomainEvent

    init(aggregateId:Id, name:String, event:DomainEvent) {
        self.aggregateId = aggregateId
        self.name = name
        self.event = event
    }
    
    public func ocurredOn() -> Date {
        return self.event.ocurredOn()
    }
}
