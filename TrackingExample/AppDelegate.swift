//  Created by Axel Ancona Esselmann on 4/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var isTester: Bool = true
    
    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = ExampleViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

