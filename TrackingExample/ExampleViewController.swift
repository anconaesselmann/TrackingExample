//  Created by Axel Ancona Esselmann on 4/26/22.
//

import UIKit
import constrain

class ExampleViewController: UIViewController {

    var loginType: LoginType = .biometric
    
    lazy var button: TrackingButton = {
        let button = TrackingButton()
        // Here we add the click event that was generated with code gen during the
        // build process.
        // When the actual click occurs the button will attach relevant contexts
        // to the event (in this case the fact that it was an iOS button click).
        // Aditional contexts might be added by the tracker before the event is
        // sent.
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
        // We can add aditional contexts we would like to pass along with the
        // button click event. Here we are adding a context that provides
        // information about the type of authentication the user userd.
        button.contexts = [LoginTypeContext(loginType: loginType)]
    }
}
