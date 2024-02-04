//
//  NewsfeedInteractor.swift
//  VkNewsFeed
//
//  Created by Evgeniy Fakhretdinov on 02.02.2024.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol NewsfeedBusinessLogic {
  func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

class NewsfeedInteractor: NewsfeedBusinessLogic {

  var presenter: NewsfeedPresentationLogic?
  var service: NewsfeedService?
  
  func makeRequest(request: Newsfeed.Model.Request.RequestType) {
    if service == nil {
      service = NewsfeedService()
    }
      
      switch request {
      case .some:
          print(".some interactor")
      case .getFeed:
          print(".getFeed interactor")
          presenter?.presentData(response: .presentNewsFeed)
      }
  }
  
}
