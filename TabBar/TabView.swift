//
//  TabView.swift
//  TabBar
//
//  Created by Екатерина Яцкевич on 6.04.25.
//

import UIKit

protocol TabViewDelegate {
    func setIndex(_ index: Int)
}

class TabView: UITabBarController, TabViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBar()
    }
    
    func setupTabBar() {
        let home = UINavigationController(rootViewController: HomeViewController())
        home.tabBarItem.title = "Home"
        home.tabBarItem.image = UIImage(systemName: "house")
        
        let messages = MessagesViewController()
        messages.tabBarItem.title = "Messages"
        messages.tabBarItem.image = UIImage(systemName: "message")
        
        let news = NewsViewController()
        news.tabBarItem.title = "News"
        news.tabBarItem.image =  UIImage(systemName: "newspaper")
        
        let profile = ProfileViewController()
        profile.delegate = self
        profile.tabBarItem.title = "Profile"
        profile.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        
        setViewControllers([home, messages, news, profile], animated: true)
        
    }
    
    func setIndex(_ index: Int) {
        selectedIndex = index
    }
}
