
//
//  SimpleEventBus.swift
//  Application
//
//  Created by Fiser on 7/5/18.
//

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
