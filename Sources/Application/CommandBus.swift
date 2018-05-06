//
//  CommandBus.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//

public protocol CommandBus
{
    func handle(command:Any) throws
}

public class SimpleCommandBus : CommandBus
{
    public private(set) var messageBus:MessageBus
    
    init(messageBus:MessageBus) {
        self.messageBus = messageBus
    }
    
    public func handle(command:Any) throws {
        do{
            try self.messageBus.handle(message: command)
        } catch {
            //TODO lanzar los eventos para detectar que una operación de modificación ha salido mal
        }
    }
}
