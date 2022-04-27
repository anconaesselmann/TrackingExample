//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

enum TriggerEnum: String {
    case buttonClick = "button_click"
    case screenView = "screen_view"
}

/// How the event was triggered
protocol MobileEventTrigger: EventContext {
    var trigger: TriggerEnum { get }
}
