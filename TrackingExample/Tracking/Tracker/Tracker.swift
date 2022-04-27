//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

protocol Tracker {
    func track(_ event: EventSchema, contexts: [EventContext])
}

class ProductionTracker: Tracker {
    static var shared: Tracker = ProductionTracker()
    
    func track(_ event: EventSchema, contexts: [EventContext]) {
        var contexts = contexts
        let appContext = ISOAppContext()
        contexts.append(appContext)
        contexts.append(ButtonClickContext())
        if AppDelegate.isTester {
            let testContext = IOSTestContext(testEmail: "axel.esselmann@gmail.com", isTester: true)
            contexts.append(testContext)
        }
        print(event, contexts)
        
        // Here we can send metrics to whatever tracking platform we desire
    }
}
