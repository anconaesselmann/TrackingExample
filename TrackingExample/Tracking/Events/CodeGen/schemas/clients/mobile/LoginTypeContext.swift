//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

enum LoginType {
    case password
    case biometric
    case oauth
}

struct LoginTypeContext: EventContext {
    let loginType: LoginType
}
