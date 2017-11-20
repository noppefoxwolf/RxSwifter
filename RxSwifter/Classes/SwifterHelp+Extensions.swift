//
//  SwifterHelp+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  
  public func getHelpConfiguration() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getHelpConfiguration(success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getHelpLanguages() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getHelpLanguages(success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getHelpPrivacy() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getHelpPrivacy(success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getHelpTermsOfService() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getHelpTermsOfService(success: { observer.onNext($0); observer.onCompleted() },
                           failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getRateLimits(for resources: [String]) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getRateLimits(for: resources,
                          success: { observer.onNext($0); observer.onCompleted() },
                          failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
