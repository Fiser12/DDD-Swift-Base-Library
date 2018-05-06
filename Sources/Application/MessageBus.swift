//
//  MessageBus.swift
//  Application
//
//  Created by Fiser on 6/5/18.
//

public protocol MessageBus {
    func handle(message:Any) throws
}

public class MessageBusNameResolver : MessageBus
{
    public private(set) var messageHandlers:[String:((Any) -> ())] = [:]
    
    init() {
    }
    
    init(messageHandlers:[String:((Any) -> ())]) {
        self.messageHandlers = messageHandlers;
    }
    
    public func appendHandler(key: String, handler:@escaping ((Any) -> ())) {
        self.messageHandlers[key] = handler;
    }
    
    private func resolve(message: Any) throws -> ((Any) -> ()) {
        let name:String = String(describing: message)
        
        guard let function = self.messageHandlers[name] else {
            throw MessageBusError.InvalidNameHandler
        }
        return function
    }
    
    public func handle(message: Any) throws {
        let function = try! self.resolve(message: message);
        function(message)
    }

}

enum MessageBusError : GenericError {
    case InvalidNameHandler
}
