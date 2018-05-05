//
//  CommandBus.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//

public protocol EventBus
{
    func publish(command:DomainEvent...)
}
