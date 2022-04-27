//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

struct ISOAppContext: AppContextSchema {
    var os: String = "iOS"
    var appVersion: String { AppDelegate.appVersion.description }
}
