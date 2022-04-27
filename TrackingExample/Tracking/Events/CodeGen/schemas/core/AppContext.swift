//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

/// Information about the device that sent the event
protocol AppContext: EventContext {
    var os: String { get }
    var version: String { get set }
    var isTester: Bool { get set }
}
