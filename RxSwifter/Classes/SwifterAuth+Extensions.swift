//
//  SwifterAuth+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import Swifter

#if os(iOS)
  import UIKit
  import SafariServices
#elseif os(macOS)
  import AppKit
#endif

public extension Swifter {
  
  #if os(macOS)
  public func authorize(with callbackURL: URL) -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.authorize(with: callbackURL,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  #endif
  
  #if os(iOS)
  public func authorize(with callbackURL: URL, presentFrom presentingViewController: UIViewController?) -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.authorize(with: callbackURL,
                      presentFrom: presentingViewController,
                      success: { observer.onNext(($0, $1)); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  #endif
  
  public func authorizeAppOnly() -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.authorizeAppOnly(success: { observer.onNext(($0, $1)); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postOAuth2BearerToken() -> Observable<JSONSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postOAuth2BearerToken(success: { observer.onNext(($0, $1)); observer.onCompleted() },
                                  failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func invalidateOAuth2BearerToken() -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.invalidateOAuth2BearerToken(success: { observer.onNext(($0, $1)); observer.onCompleted() },
                                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postOAuthRequestToken(with callbackURL: URL) -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postOAuthRequestToken(with: callbackURL,
                                  success: { observer.onNext(($0, $1)); observer.onCompleted() },
                                  failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postOAuthAccessToken(with requestToken: Credential.OAuthAccessToken) -> Observable<TokenSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postOAuthAccessToken(with: requestToken,
                                 success: { observer.onNext(($0, $1)); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
