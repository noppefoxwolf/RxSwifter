//
//  SwifterSuggested+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  public func getUserSuggestions(slug: String, lang: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUserSuggestions(slug: slug,
                               lang: lang,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUsersSuggestions(lang: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUsersSuggestions(lang: lang,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getUsersSuggestions(for slug: String) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getUsersSuggestions(for: slug,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}


