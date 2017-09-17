//
//  SwifterSavedSearches+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import Swifter

public extension Swifter {
  
  public func getSavedSearchesList() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getSavedSearchesList(success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func showSavedSearch(for id: String) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.showSavedSearch(for: id,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func createSavedSearch(for query: String) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.createSavedSearch(for: query,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func deleteSavedSearch(for id: String) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.deleteSavedSearch(for: id,
                              success: { observer.onNext($0); observer.onCompleted() },
                              failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
