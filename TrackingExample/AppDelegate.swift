//  Created by Axel Ancona Esselmann on 4/26/22.
//

import UIKit

struct AppVersion {
    let major: Int
    let minor: Int
    let patch: Int
    
    var description: String {
        "\(major).\(minor).\(patch)"
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var isTester: Bool = true
    
    static var appVersion = AppVersion(major: 10, minor: 19, patch: 0)
    
    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = ExampleViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

