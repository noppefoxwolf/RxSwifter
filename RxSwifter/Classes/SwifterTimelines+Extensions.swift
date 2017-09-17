//
//  Swifter+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import Swifter

public extension Swifter {
  public func getMentionsTimelineTweets(count: Int? = nil,
                                        sinceID: String? = nil,
                                        maxID: String? = nil,
                                        trimUser: Bool? = nil,
                                        contributorDetails: Bool? = nil,
                                        includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getMentionsTimelineTweets(count: count,
                                      sinceID: sinceID,
                                      maxID: maxID,
                                      trimUser: trimUser,
                                      contributorDetails: contributorDetails,
                                      includeEntities: includeEntities,
                                      success: { observer.onNext($0); observer.onCompleted() },
                                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getTimeline(for userID: String,
                          count: Int? = nil,
                          sinceID: String? = nil,
                          maxID: String? = nil,
                          trimUser: Bool? = nil,
                          contributorDetails: Bool? = nil,
                          includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getTimeline(for: userID,
                        count: count,
                        sinceID: sinceID,
                        maxID: maxID,
                        trimUser: trimUser,
                        contributorDetails: contributorDetails,
                        includeEntities: includeEntities,
                        success: { observer.onNext($0); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getHomeTimeline(count: Int? = nil,
                              sinceID: String? = nil,
                              maxID: String? = nil,
                              trimUser: Bool? = nil,
                              contributorDetails: Bool? = nil,
                              includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getHomeTimeline(count: count,
                            sinceID: sinceID,
                            maxID: maxID,
                            trimUser: trimUser,
                            contributorDetails: contributorDetails,
                            includeEntities: includeEntities,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getRetweetsOfMe(count: Int? = nil,
                              sinceID: String? = nil,
                              maxID: String? = nil,
                              trimUser: Bool? = nil,
                              contributorDetails: Bool? = nil,
                              includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getRetweetsOfMe(count: count,
                            sinceID: sinceID,
                            maxID: maxID,
                            trimUser: trimUser,
                            contributorDetails: contributorDetails,
                            includeEntities: includeEntities,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
}
