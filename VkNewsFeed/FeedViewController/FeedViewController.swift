//
//  FeedViewController.swift
//  VkNewsFeed
//
//  Created by Evgeniy Fakhretdinov on 24.01.2024.
//

import UIKit

class FeedViewController: UIViewController {

    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        view.backgroundColor = .systemBlue
        fetcher.getFeed { feedResponse in
            guard let feedResponse = feedResponse else { return }
            feedResponse.items.map { feedItem in
//                print(feedItem.date)
                print(feedItem.text)
            }
        }
    }
    
}
