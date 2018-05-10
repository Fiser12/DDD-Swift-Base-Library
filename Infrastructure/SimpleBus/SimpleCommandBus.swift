//
//  SimpleCommandBus.swift
//  Application
//
//  Created by Fiser on 7/5/18.
//

public class SimpleCommandBus : CommandBus
{
    public private(set) var messageBus:MessageBus
    
    init(messageBus:MessageBus) {
        self.messageBus = messageBus
    }
    
    public func handle(command:Command) throws {
        do{
            try self.messageBus.handle(message: command)
        } catch {

        }
    }
}
