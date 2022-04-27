//  Created by Axel Ancona Esselmann on 4/27/22.
//

import UIKit

protocol ButtonDelegate: AnyObject {
    func hasTapped()
}

class TrackingButton: UIView {
    
    var tracking: Tracker
    
    var buttonEvent: EventSchema?
    var contexts: [EventContext] = []
    
    weak var delegate: ButtonDelegate?
    
    init(tracking: Tracker = ProductionTracker.shared) {
        self.tracking = tracking
        super.init(frame: .zero)
        backgroundColor = .red
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped(_:)))
        addGestureRecognizer(tap)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer) {
        guard let event = buttonEvent else {
            return
        }
        delegate?.hasTapped()
        tracking.track(event, contexts: contexts + [ButtonClickContext()])
    }
}
