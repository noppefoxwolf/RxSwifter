//
//  SwifterTrends+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  public func getTrendsPlace(with woeid: String, excludeHashtags: Bool = false) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getTrendsPlace(with: woeid,
                           excludeHashtags: excludeHashtags,
                           success: { observer.onNext($0); observer.onCompleted() },
                           failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getAvailableTrends() -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getAvailableTrends(success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getClosestTrends(for coordinate: (lat: Double, long: Double)) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getClosestTrends(for: coordinate,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
