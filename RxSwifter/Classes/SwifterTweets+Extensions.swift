//
//  SwifterTweets+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import RxSwift
import Swifter

public extension Swifter {
  public func getRetweets(forTweetID id: String, count: Int? = nil, trimUser: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getRetweets(forTweetID: id,
                        count: count,
                        trimUser: trimUser,
                        success: { observer.onNext($0); observer.onCompleted() },
                        failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getTweet(forID id: String,
                       count: Int? = nil,
                       trimUser: Bool? = nil,
                       includeMyRetweet: Bool? = nil,
                       includeEntities: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.getTweet(forID: id,
                     count: count,
                     trimUser: trimUser,
                     includeMyRetweet: includeMyRetweet,
                     includeEntities: includeEntities,
                     success: { observer.onNext($0); observer.onCompleted() },
                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func destroyTweet(forID id: String, trimUser: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.destroyTweet(forID: id,
                         trimUser: trimUser,
                         success: { observer.onNext($0); observer.onCompleted() },
                         failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postTweet(status: String,
                        inReplyToStatusID: String? = nil,
                        coordinate: (lat: Double, long: Double)? = nil,
                        placeID: Double? = nil,
                        displayCoordinates: Bool? = nil,
                        trimUser: Bool? = nil,
                        tweetMode: TweetMode,
                        media_ids: [String] = []) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postTweet(status: status,
                      inReplyToStatusID: inReplyToStatusID,
                      coordinate: coordinate,
                      placeID: placeID,
                      displayCoordinates: displayCoordinates,
                      trimUser: trimUser,
                      tweetMode: tweetMode,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postTweet(status: String,
                        media: Data,
                        inReplyToStatusID: String? = nil,
                        coordinate: (lat: Double, long: Double)? = nil,
                        placeID: Double? = nil,
                        displayCoordinates: Bool? = nil,
                        trimUser: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postTweet(status: status,
                      media: media,
                      inReplyToStatusID: inReplyToStatusID,
                      coordinate: coordinate,
                      placeID: placeID,
                      displayCoordinates: displayCoordinates,
                      trimUser: trimUser,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func postMedia(_ media: Data, additionalOwners: UsersTag? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.postMedia(media,
                      additionalOwners: additionalOwners,
                      success: { observer.onNext($0); observer.onCompleted() },
                      failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func retweetTweet(forID id: String, trimUser: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.retweetTweet(forID: id,
                         trimUser: trimUser,
                         success: { observer.onNext($0); observer.onCompleted() },
                         failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func unretweetTweet(forID id: String, trimUser: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.unretweetTweet(forID: id,
                           trimUser: trimUser,
                           success: { observer.onNext($0); observer.onCompleted() },
                           failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func oembedInfo(forID id: String,
                         maxWidth: Int? = nil,
                         hideMedia: Bool? = nil,
                         hideThread: Bool? = nil,
                         omitScript: Bool? = nil,
                         align: String? = nil,
                         related: String? = nil,
                         lang: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.oembedInfo(forID: id,
                       maxWidth: maxWidth,
                       hideMedia: hideMedia,
                       hideThread: hideThread,
                       omitScript: omitScript,
                       align: align,
                       related: related,
                       lang: lang,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func oembedInfo(forUrl url: URL,
                         maxWidth: Int? = nil,
                         hideMedia: Bool? = nil,
                         hideThread: Bool? = nil,
                         omitScript: Bool? = nil,
                         align: String? = nil,
                         related: String? = nil,
                         lang: String? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.oembedInfo(forUrl: url,
                       maxWidth: maxWidth,
                       hideMedia: hideMedia,
                       hideThread: hideThread,
                       omitScript: omitScript,
                       align: align,
                       related: related,
                       lang: lang,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func tweetRetweeters(forID id: String,
                              cursor: String? = nil,
                              stringifyIDs: Bool? = nil) -> Observable<CursorSuccess> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.tweetRetweeters(forID: id,
                            cursor: cursor,
                            stringifyIDs: stringifyIDs,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func lookupTweets(for tweetIDs: [String],
                           includeEntities: Bool? = nil,
                           map: Bool? = nil) -> Observable<Success> {
    return Observable.create({ [weak self] (observer) -> Disposable in
      self?.lookupTweets(for: tweetIDs,
                         includeEntities: includeEntities,
                         map: map,
                         success: { observer.onNext($0); observer.onCompleted() },
                         failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
}
