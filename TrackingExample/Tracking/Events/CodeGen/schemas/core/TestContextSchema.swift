//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

/// Context added when testing
protocol TestContextSchema: EventContext {
    var isTester: Bool { get }
    var testEmail: String { get }
}
