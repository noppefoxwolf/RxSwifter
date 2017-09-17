//
//  SwifterUsers+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import Swifter

public extension Swifter {
  
  public func getAccountSettings() -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.getAccountSettings(success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func verifyAccountCredentials(includeEntities: Bool? = nil,
                                       skipStatus: Bool? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.verifyAccountCredentials(includeEntities: includeEntities,
                                     skipStatus: skipStatus,
                                     success: { observer.onNext($0); observer.onCompleted() },
                                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateAccountSettings(trendLocationWOEID: String? = nil,
                                    sleepTimeEnabled: Bool? = nil,
                                    startSleepTime: Int? = nil,
                                    endSleepTime: Int? = nil,
                                    timeZone: String? = nil,
                                    lang: String? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.updateAccountSettings(trendLocationWOEID: trendLocationWOEID,
                                  sleepTimeEnabled: sleepTimeEnabled,
                                  startSleepTime: startSleepTime,
                                  endSleepTime: endSleepTime,
                                  timeZone: timeZone,
                                  lang: lang,
                                  success: { observer.onNext($0); observer.onCompleted() },
                                  failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateUserProfile(name: String? = nil,
                                url: String? = nil,
                                location: String? = nil,
                                description: String? = nil,
                                includeEntities: Bool? = nil,
                                skipStatus: Bool? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.updateUserProfile(name: name,
                              url: url,
                              location: location,
                              description: description,
                              includeEntities: includeEntities,
                              skipStatus: skipStatus,
                              success: { observer.onNext($0); observer.onCompleted() },
                              failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateProfileBackground(using imageData: Data,
                                      title: String? = nil,
                                      includeEntities: Bool? = nil,
                                      use: Bool? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.updateProfileBackground(using: imageData,
                                    title: title,
                                    includeEntities: includeEntities,
                                    use: use,
                                    success: { observer.onNext($0); observer.onCompleted() },
                                    failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateProfileColors(backgroundColor: String? = nil,
                                  linkColor: String? = nil,
                                  sidebarBorderColor: String? = nil,
                                  sidebarFillColor: String? = nil,
                                  textColor: String? = nil,
                                  includeEntities: Bool? = nil,
                                  skipStatus: Bool? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.updateProfileColors(backgroundColor: backgroundColor,
                                linkColor: linkColor,
                                sidebarBorderColor: sidebarBorderColor,
                                sidebarFillColor: sidebarFillColor,
                                textColor: textColor,
                                includeEntities: includeEntities,
                                skipStatus: skipStatus,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateProfileImage(using imageData: Data,
                                 includeEntities: Bool? = nil,
                                 skipStatus: Bool? = nil) -> Observable<JSON> {
    return Observable<JSON>.create({ [weak self] (observer) -> Disposable in
      self?.updateProfileImage(using: imageData,
                               includeEntities: includeEntities,
                               skipStatus: skipStatus,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getBlockedUsers(includeEntities: Bool? = nil,
                              skipStatus: Bool? = nil,
                              cursor: String? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getBlockedUsers(includeEntities: includeEntities,
                            skipStatus: skipStatus,
                            cursor: cursor,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getBlockedUsersIDs(stringifyIDs: String? = nil, cursor: String? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getBlockedUsersIDs(stringifyIDs: stringifyIDs,
                               cursor: cursor,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func blockUser(for userTag: UserTag,
                        includeEntities: Bool? = nil,
                        skipStatus: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.blockUser(for: userTag,
                      includeEntities: includeEntities,
                      skipStatus: skipStatus,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func unblockUser(for userTag: UserTag,
                          includeEntities: Bool? = nil,
                          skipStatus: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.unblockUser(for: userTag,
                  includeEntities: includeEntities,
                  skipStatus: skipStatus,
                  success: { observer.onNext($0); observer.onCompleted() },
                  failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func lookupUsers(for usersTag: UsersTag,
                          includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.lookupUsers(for: usersTag,
                        includeEntities: includeEntities,
                        success: { observer.onNext($0); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func showUser(for userTag: UserTag, includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.showUser(for: userTag,
                     includeEntities: includeEntities,
                     success: { observer.onNext($0); observer.onCompleted() },
                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func searchUsers(using query: String, page: Int?, count: Int?, includeEntities: Bool?) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.searchUsers(using: query,
                        page: page,
                        count: count,
                        includeEntities: includeEntities,
                        success: { observer.onNext($0); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func removeProfileBanner() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.removeProfileBanner(success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func updateProfileBanner(using imageData: Data,
                                  width: Int? = nil,
                                  height: Int? = nil,
                                  offsetLeft: Int? = nil,
                                  offsetTop: Int? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.updateProfileBanner(using: imageData,
                                width: width,
                                height: height,
                                offsetLeft: offsetLeft,
                                offsetTop: offsetTop,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getProfileBanner(for userTag: UserTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getProfileBanner(for: userTag,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func muteUser(for userTag: UserTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.muteUser(for: userTag,
                     success: { observer.onNext($0); observer.onCompleted() },
                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func unmuteUser(for userTag: UserTag) -> Observable<JSON> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.unmuteUser(for: userTag,
                     success: { observer.onNext($0); observer.onCompleted() },
                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getMuteUsersIDs(cursor: String? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getMuteUsersIDs(cursor: cursor,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getMuteUsers(cursor: String? = nil,
                           includeEntities: Bool? = nil,
                           skipStatus: Bool? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getMuteUsers(cursor: cursor,
                         includeEntities: includeEntities,
                         skipStatus: skipStatus,
                         success: { observer.onNext($0); observer.onCompleted() },
                         failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
