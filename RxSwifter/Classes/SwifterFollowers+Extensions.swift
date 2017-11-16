//
//  SwifterFollowers+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import Swifter

public extension Swifter {
  
  public func listOfNoRetweetsFriends(stringifyIDs: Bool = true) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.listOfNoRetweetsFriends(stringifyIDs: stringifyIDs,
                                    success: { observer.onNext($0); observer.onCompleted() },
                                    failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUserFollowingIDs(for userTag: UserTag, cursor: String? = nil, stringifyIDs: Bool? = nil, count: Int? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUserFollowingIDs(for: userTag,
                                cursor: cursor,
                                stringifyIDs: stringifyIDs,
                                count: count,
                                success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUserFollowersIDs(for userTag: UserTag, cursor: String? = nil, stringifyIDs: Bool? = nil, count: Int? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUserFollowersIDs(for: userTag,
                                cursor: cursor,
                                stringifyIDs: stringifyIDs,
                                count: count,
                                success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getIncomingPendingFollowRequests(cursor: String? = nil,
                                               stringifyIDs: String? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getIncomingPendingFollowRequests(cursor: cursor,
                                             stringifyIDs: stringifyIDs,
                                             success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getOutgoingPendingFollowRequests(cursor: String? = nil,
                                               stringifyIDs: String? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getOutgoingPendingFollowRequests(cursor: cursor,
                                             stringifyIDs: stringifyIDs,
                                             success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func followUser(for userTag: UserTag, follow: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.followUser(for: userTag,
                       follow: follow,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func unfollowUser(for userTag: UserTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.unfollowUser(for: userTag,
                         success: { observer.onNext($0); observer.onCompleted() },
                         failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateFriendship(with userTag: UserTag, device: Bool? = nil, retweets: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.updateFriendship(with: userTag,
                             device: device,
                             retweets: retweets,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func showFriendship(between sourceTag: UserTag, and targetTag: UserTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.showFriendship(between: sourceTag,
                           and: targetTag,
                           success: { observer.onNext($0); observer.onCompleted() },
                           failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUserFollowing(for userTag: UserTag,
                               cursor: String? = nil,
                               count: Int? = nil,
                               skipStatus: Bool? = nil,
                               includeUserEntities: Bool? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUserFollowing(for: userTag,
                             cursor: cursor,
                             count: count,
                             skipStatus: skipStatus,
                             includeUserEntities: includeUserEntities,
                             success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUserFollowers(for userTag: UserTag,
                               cursor: String? = nil,
                               count: Int? = nil,
                               skipStatus: Bool? = nil,
                               includeUserEntities: Bool? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUserFollowers(for: userTag,
                             cursor: cursor,
                             count: count,
                             skipStatus: skipStatus,
                             includeUserEntities: includeUserEntities,
                             success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func lookupFriendship(with usersTag: UsersTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.lookupFriendship(with: usersTag,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
