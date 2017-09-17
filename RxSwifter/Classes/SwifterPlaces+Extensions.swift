//
//  SwifterPlaces+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/18.
//
//

import RxSwift
import Swifter

public extension Swifter {
  
  public func getGeoID(for placeID: String) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getGeoID(for: placeID,
                        success: { observer.onNext($0); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getReverseGeocode(for coordinate: (lat: Double, long: Double), accuracy: String? = nil, granularity: String? = nil, maxResults: Int? = nil, callback: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getReverseGeocode(for: coordinate,
                              accuracy: accuracy,
                              granularity: granularity,
                              maxResults: maxResults,
                              callback: callback,
                              success: { observer.onNext($0); observer.onCompleted() },
                              failure: { observer.onError($0) })
      return Disposables.create()
    })
  }

  public func searchGeo(coordinate: (lat: Double, long: Double)? = nil, query: String? = nil, ipAddress: String? = nil, accuracy: String? = nil, granularity: String? = nil, maxResults: Int? = nil, containedWithin: String? = nil, attributeStreetAddress: String? = nil, callback: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.searchGeo(coordinate: coordinate,
                      query: query,
                      ipAddress: ipAddress,
                      accuracy: accuracy,
                      granularity: granularity,
                      maxResults: maxResults,
                      containedWithin: containedWithin,
                      attributeStreetAddress: attributeStreetAddress,
                      callback: callback,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getSimilarPlaces(for coordinate: (lat: Double, long: Double), name: String, containedWithin: String? = nil, attributeStreetAddress: String? = nil, callback: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getSimilarPlaces(for: coordinate,
                             name: name,
                             containedWithin: containedWithin,
                             attributeStreetAddress: attributeStreetAddress,
                             callback: callback,
                             success: { observer.onNext($0); observer.onCompleted() },
                             failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
