//
//  NewsfeedPresenter.swift
//  VkNewsFeed
//
//  Created by Evgeniy Fakhretdinov on 02.02.2024.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol NewsfeedPresentationLogic {
  func presentData(response: Newsfeed.Model.Response.ResponseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic {
  weak var viewController: NewsfeedDisplayLogic?
  
  func presentData(response: Newsfeed.Model.Response.ResponseType) {
      
      switch response {
      case .some:
          print(".some Presenter")
      case .presentNewsFeed:
          print(".presentNewsFeed Presenter")
          viewController?.displayData(viewModel: .displayNewsFeed)
      }
  
  }
  
}
