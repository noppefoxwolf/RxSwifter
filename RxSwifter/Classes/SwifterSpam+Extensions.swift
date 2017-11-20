//
//  SwifterSpam+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  public func reportSpam(for userTag: UserTag) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.reportSpam(for: userTag,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
}
