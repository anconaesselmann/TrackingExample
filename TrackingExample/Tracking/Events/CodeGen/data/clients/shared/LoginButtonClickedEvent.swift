//  Created by Axel Ancona Esselmann on 4/27/22.
//

import Foundation

/// On the login screen once the user has entered username and password and clicked the login button
struct LoginButtonClickedEvent: EventSchema {
    let label: String = "login_button_clicked"
}
