//  Created by Axel Ancona Esselmann on 4/26/22.
//

import UIKit
import constrain

class ExampleViewController: UIViewController {

    var loginType: LoginType = .biometric
    
    lazy var button: TrackingButton = {
        let button = TrackingButton()
        button.buttonEvent = LoginButtonClickedEvent()
        button.delegate = self
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        button.constrainIn(view)
            .topSafe(16)
            .centerX()
            .width(100)
            .height(50)
    }
    
}

extension ExampleViewController: ButtonDelegate {
    func hasTapped() {
        button.contexts = [LoginTypeContext(loginType: loginType)]
    }
}
