//
//  QueryHandler.swift
//  Application
//
//  Created by Fiser on 11/5/18.
//

public protocol QueryHandler
{
    func handler(command:Query) -> Any
}
