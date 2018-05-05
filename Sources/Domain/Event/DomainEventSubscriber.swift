//
//  DomainEventSubscriber.swift
//  CQRS Swift Library
//
//  Created by Fiser on 5/5/18.
//

protocol DomainEventSubscriber
{
    func handle(event:DomainEvent)
}

class InMemoryDomainEventSubscriber : DomainEventSubscriber
{
    public private(set) var events:[DomainEvent]

    init() {
        self.events = [];
    }
    
    func handle(event: DomainEvent) {
        if(!self.isSuscribedTo(event: event)) {
            return;
        }
        self.events.append(event)
    }
    
    private func isSuscribedTo(event: DomainEvent) -> Bool {
        return event is DomainEventPublisher
        //TODO Change to PublishableDomainEvent
    }
}
