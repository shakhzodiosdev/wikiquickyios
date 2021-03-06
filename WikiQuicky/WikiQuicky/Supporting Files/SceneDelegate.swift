//
//  SceneDelegate.swift
//  WikiQuicky
//
//  Created by Shakhzod Bobokhonov on 4/13/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        guard let winScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: winScene)
       // if launchedBefore {
          //  window?.rootViewController = ViewControllerVC()
        //}else {
            window?.rootViewController = AppIntroductionVC()
        //}
        
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
      
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
     
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
   
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
     
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}


