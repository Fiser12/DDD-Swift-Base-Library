//
//  EventStore.swift
//  Application
//
//  Created by Fiser on 6/5/18.
//

import Foundation

protocol EventStore
{
    func appeand(event:StoredEvent)
    func eventsSince(since:Date, offset:Int, limit:Int) -> [StoredEvent]
}
