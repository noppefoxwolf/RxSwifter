//
//  SwifterSearch+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import SwifteriOS

public extension Swifter {
  public func searchTweet(using query: String,
                          geocode: String? = nil,
                          lang: String? = nil,
                          locale: String? = nil,
                          resultType: String? = nil,
                          count: Int? = nil,
                          until: String? = nil,
                          sinceID: String? = nil,
                          maxID: String? = nil,
                          includeEntities: Bool? = nil,
                          callback: String? = nil) -> Observable<SearchMetadatsSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.searchTweet(using: query,
                        geocode: geocode,
                        lang: lang,
                        locale: locale,
                        resultType: resultType,
                        count: count,
                        until: until,
                        sinceID: sinceID,
                        maxID: maxID,
                        includeEntities: includeEntities,
                        callback: callback,
                        success: { observer.onNext(($0, $1)); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
