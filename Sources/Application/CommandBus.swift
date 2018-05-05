//
//  CommandBus.swift
//  CQRS Swift Library
//
//  Created by Fiser on 4/5/18.
//

import Foundation

public protocol CommandBus
{
    func handle(command:Any)
}
