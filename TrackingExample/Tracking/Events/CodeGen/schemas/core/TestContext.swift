//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

/// Context added when testing
struct TestContext: EventContext {
    let isTester: Bool
    let testEmail: String
}
