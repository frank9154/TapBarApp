//
//  MainViewController.swift
//  TapBarApp
//
//  Created by Александр Соколов on 27.11.2023.
//

import UIKit

final class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        //destination по умолчанию возвращает UIViewController , а нам нужен UITabBarController, у которого есть массив
        tabBarVC?.viewControllers?.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            } else if let navigationVC = viewController as? UINavigationController {
                let thirdVC = navigationVC.topViewController as? ThirdViewController
                thirdVC?.title = "Third Screen"
                thirdVC?.view.backgroundColor = .systemCyan
            }
        }
    }

}

