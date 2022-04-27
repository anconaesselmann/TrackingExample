//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

/// Information about the device that sent the event
protocol AppContextSchema: EventContext {
    var os: String { get }
    var appVersion: String { get }
}
