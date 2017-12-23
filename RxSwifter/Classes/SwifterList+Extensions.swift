//
//  SwifterList+Extensions.swift
//  RxSwifter
//
//  Created by Tomoya Hirano on 2017/12/23.
//

import RxSwift
import SwifteriOS

public extension Swifter {
  /**
   GET    lists/list
   
   Returns all lists the authenticating or specified user subscribes to, including their own. The user is specified using the user_id or screen_name parameters. If no user is given, the authenticating user is used.
   
   This method used to be GET lists in version 1.0 of the API and has been renamed for consistency with other call.
   
   A maximum of 100 results will be returned by this call. Subscribed lists are returned first, followed by owned lists. This means that if a user subscribes to 90 lists and owns 20 lists, this method returns 90 subscriptions and 10 owned lists. The reverse method returns owned lists first, so with reverse=true, 20 owned lists and 80 subscriptions would be returned. If your goal is to obtain every list a user owns or subscribes to, use GET lists/ownerships and/or GET lists/subscriptions instead.
   */
  public func getSubscribedLists(reverse: Bool?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.getSubscribedLists(reverse: reverse,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  public func getSubscribedLists(for userTag: UserTag, reverse: Bool?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.getSubscribedLists(for: userTag, reverse: reverse,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/statuses
   
   Returns a timeline of tweets authored by members of the specified list. Retweets are included by default. Use the include_rts=false parameter to omit retweets. Embedded Timelines is a great way to embed list timelines on your website.
   */
  public func listTweets(for listTag: ListTag,
                         sinceID: String?,
                         maxID: String?,
                         count: Int?,
                         includeEntities: Bool?,
                         includeRTs: Bool?,
                         tweetMode: TweetMode = TweetMode.default) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.listTweets(for: listTag, sinceID: sinceID, maxID: maxID, count: count, includeEntities: includeEntities, includeRTs: includeRTs,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/members/destroy
   
   Removes the specified member from the list. The authenticated user must be the list's owner to remove members from the list.
   */
  public func removeMemberFromList(for listTag: ListTag, user userTag: UserTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.removeMemberFromList(for: listTag, user: userTag,
                                 success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET    lists/memberships
   
   Returns the lists the specified user has been added to. If user_id or screen_name are not provided the memberships for the authenticating user are returned.
   */
  public func getListMemberships(for userTag: UserTag, count: Int? = nil, cursor: String?, filterToOwnedLists: Bool?) -> Observable<CursorSuccess> {
    return Observable<CursorSuccess>.create({ [weak self] (observer) -> Disposable in
      self?.getListMemberships(for: userTag, count: count, cursor: cursor, filterToOwnedLists: filterToOwnedLists,
                                 success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/subscribers
   
   Returns the subscribers of the specified list. Private list subscribers will only be shown if the authenticated user owns the specified list.
   */
  public func getListSubscribers(for listTag: ListTag, cursor: String?, includeEntities: Bool?, skipStatus: Bool?) -> Observable<CursorSuccess> {
    return Observable<CursorSuccess>.create({ [weak self] (observer) -> Disposable in
      self?.getListSubscribers(for: listTag, cursor: cursor, includeEntities: includeEntities, skipStatus: skipStatus,
                               success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/subscribers/create
   
   Subscribes the authenticated user to the specified list.
   */
  public func subscribeToList(for listTag: ListTag, owner ownerTag: UserTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.subscribeToList(for: listTag, owner: ownerTag,
                               success: { observer.onNext($0); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/subscribers/show
   
   Check if the specified user is a subscriber of the specified list. Returns the user if they are subscriber.
   */
  public func checkListSubcription(of userTag: UserTag, for listTag: ListTag, includeEntities: Bool?, skipStatus: Bool?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.checkListSubcription(of: userTag, for: listTag, includeEntities: includeEntities, skipStatus: skipStatus,
                            success: { observer.onNext($0); observer.onCompleted() },
                            failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/subscribers/destroy
   
   Unsubscribes the authenticated user from the specified list.
   */
  public func unsubscribeFromList(for listTag: ListTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.unsubscribeFromList(for: listTag,
                                 success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/members/create_all
   
   Adds multiple members to a list, by specifying a comma-separated list of member ids or screen names. The authenticated user must own the list to be able to add members to it. Note that lists can't have more than 5,000 members, and you are limited to adding up to 100 members to a list at a time with this method.
   
   Please note that there can be issues with lists that rapidly remove and add memberships. Take care when using these methods such that you are not too rapidly switching between removals and adds on the same list.
   */
  public func subscribeUsersToList(for listTag: ListTag, users usersTag: UsersTag, includeEntities: Bool?, skipStatus: Bool?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.subscribeUsersToList(for: listTag, users: usersTag, includeEntities: includeEntities, skipStatus: skipStatus,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/members/show
   
   Check if the specified user is a member of the specified list.
   */
  public func checkListMembership(of userTag: UserTag, for listTag: ListTag, includeEntities: Bool?, skipStatus: Bool?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.checkListMembership(of: userTag, for: listTag, includeEntities: includeEntities, skipStatus: skipStatus,
                                 success: { observer.onNext($0); observer.onCompleted() },
                                 failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET    lists/members
   
   Returns the members of the specified list. Private list members will only be shown if the authenticated user owns the specified list.
   */
  
  public func getListMembers(for listTag: ListTag, cursor: String?, includeEntities: Bool?, skipStatus: Bool?) -> Observable<CursorSuccess> {
    return Observable<CursorSuccess>.create({ [weak self] (observer) -> Disposable in
      self?.getListMembers(for: listTag, cursor: cursor, includeEntities: includeEntities, skipStatus: skipStatus,
                               success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                               failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/members/create
   
   Add a member to a list. The authenticated user must own the list to be able to add members to it. Note that lists cannot have more than 5,000 members.
   */
  public func addListMember(_ userTag: UserTag, for listTag: ListTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.addListMember(userTag, for: listTag,
                                success: { observer.onNext($0); observer.onCompleted() },
                                failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/destroy
   
   Deletes the specified list. The authenticated user must own the list to be able to destroy it.
   */
  public func deleteList(for listTag: ListTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.deleteList(for: listTag,
                          success: { observer.onNext($0); observer.onCompleted() },
                          failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/update
   
   Updates the specified list. The authenticated user must own the list to be able to update it.
   */
  public func updateList(for listTag: ListTag, name: String?, isPublic: Bool = true, description: String?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.updateList(for: listTag, name: name, isPublic: isPublic, description: description,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/create
   
   Creates a new list for the authenticated user. Note that you can't create more than 20 lists per account.
   */
  public func createList(named name: String, asPublicList: Bool = true, description: String?) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.createList(named: name, asPublicList: asPublicList, description: description,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/show
   
   Returns the specified list. Private lists will only be shown if the authenticated user owns the specified list.
   */
  public func showList(for listTag: ListTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.showList(for: listTag,
                       success: { observer.onNext($0); observer.onCompleted() },
                       failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET  lists/subscriptions
   
   Obtain a collection of the lists the specified user is subscribed to, 20 lists per page by default. Does not include the user's own lists.
   */
  public func getSubscribedList(of userTag: UserTag, count: String?, cursor: String?) -> Observable<CursorSuccess> {
    return Observable<CursorSuccess>.create({ [weak self] (observer) -> Disposable in
      self?.getSubscribedList(of: userTag, count: count, cursor: cursor,
                           success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                           failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   POST  lists/members/destroy_all
   
   Removes multiple members from a list, by specifying a comma-separated list of member ids or screen names. The authenticated user must own the list to be able to remove members from it. Note that lists can't have more than 500 members, and you are limited to removing up to 100 members to a list at a time with this method.
   
   Please note that there can be issues with lists that rapidly remove and add memberships. Take care when using these methods such that you are not too rapidly switching between removals and adds on the same list.
   */
  public func removeListMembers(_ usersTag: UsersTag, for listTag: ListTag) -> Observable<Success> {
    return Observable<Success>.create({ [weak self] (observer) -> Disposable in
      self?.removeListMembers(usersTag, for: listTag,
                     success: { observer.onNext($0); observer.onCompleted() },
                     failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
  
  /**
   GET    lists/ownerships
   
   Returns the lists owned by the specified Twitter user. Private lists will only be shown if the authenticated user is also the owner of the lists.
   */
  public func getOwnedLists(for userTag: UserTag, count: String?, cursor: String?) -> Observable<CursorSuccess> {
    return Observable<CursorSuccess>.create({ [weak self] (observer) -> Disposable in
      self?.getOwnedLists(for: userTag, count: count, cursor: cursor,
                              success: { observer.onNext(($0, $1, $2)); observer.onCompleted() },
                              failure: { observer.onError($0) })
      return Disposables.create()
    })
  }
}
