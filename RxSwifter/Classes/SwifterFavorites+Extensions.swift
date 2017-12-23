//
//  SwifterFavorites+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  
  /**
   GET    favorites/list
   
   Returns the 20 most recent Tweets favorited by the authenticating or specified user.
   
   If you do not provide either a user_id or screen_name to this method, it will assume you are requesting on behalf of the authenticating user. Specify one or the other for best results.
   */
  public func getRecentlyFavoritedTweets(count: Int? = nil,
                                          sinceID: String? = nil,
                                          maxID: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getRecentlyFavoritedTweets(count: count,
                                        sinceID: sinceID,
                                        maxID: maxID,
                                        success: { observer.onNext($0); observer.onCompleted() },
                                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getRecentlyFavoritedTweets(for userTag: UserTag,
                                          count: Int? = nil,
                                          sinceID: String? = nil,
                                          maxID: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getRecentlyFavoritedTweets(for: userTag,
                                        count: count,
                                        sinceID: sinceID,
                                        maxID: maxID,
                                        success: { observer.onNext($0); observer.onCompleted() },
                                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func unfavouriteTweet(forID id: String, includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.unfavoriteTweet(forID: id,
                             includeEntities: includeEntities,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func favouriteTweet(forID id: String,
                             includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.favoriteTweet(forID: id,
                             includeEntities: includeEntities,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
}
