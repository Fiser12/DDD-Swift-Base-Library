//
//  DomainEventPublisher.swift
//  CQRS Swift Library
//
//  Created by Fiser on 5/5/18.
//

final class DomainEventPublisher
{
    public static let instance:DomainEventPublisher = DomainEventPublisher()
    public private(set) var suscribers:[String:DomainEventSubscriber]
    
    private init() {
        self.suscribers = [:]
    }

    public func subscriber(className:String) -> DomainEventSubscriber? {
        return self.suscribers[className]
    }
    
    public func publish(event:DomainEvent) {
        for (_, suscriber) in self.suscribers {
            suscriber.handle(event: event)
        }
    }
    
}
