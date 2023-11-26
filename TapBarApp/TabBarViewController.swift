//
//  TabBarViewController.swift
//  TapBarApp
//
//  Created by Александр Соколов on 27.11.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        //данный метод configureWithOpaqueBackground сделате наш метод непрозрачным
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    

}
