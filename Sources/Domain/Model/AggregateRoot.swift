//
//  AggregateRoot.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//

public protocol AggregateRoot
{

    var id:Id {get}
    var recordedEvent: [DomainEvent] {get}
    mutating func clearEvents();
    func publish(event:DomainEvent)
}

extension AggregateRoot {
    private(set) var recordedEvent : [DomainEvent] {
        get {
            return self.recordedEvent
        }
        set {
            self.recordedEvent = newValue
        }
    }
    mutating func clearEvents() {
        self.recordedEvent = []
    }
    
    mutating internal func publish(event:DomainEvent) {
        self.record(event: event)
        DomainEventPublisher.instance.publish(
            event: PublishableDomainEvent(
                aggregateId: self.id,
                name: String(describing: self),
                event: event
            )
        )
    }
    
    mutating private func record (event:DomainEvent) {
        self.recordedEvent.append(event)
    }
}
