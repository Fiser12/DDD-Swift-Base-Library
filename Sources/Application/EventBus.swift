//
//  CommandBus.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//

public protocol EventBus
{
    func publish(events:DomainEvent...) throws
}

public class SimpleEventBus : EventBus
{
    public private(set) var messageBus:MessageBus
    
    init(messageBus:MessageBus) {
        self.messageBus = messageBus
    }
    
    public func publish(events: DomainEvent...) throws {
        for event in events {
            try! self.messageBus.handle(message: event)
        }
    }
}
