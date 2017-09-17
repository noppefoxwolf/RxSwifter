//
//  Swifter+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/09/17.
//
//

import Swifter

extension Swifter {
  public typealias Success = JSON
  public typealias CursorSuccess = (JSON, String?, String?) // json, previousCursor, nextCursor
  public typealias SearchMetadatsSuccess = (JSON, JSON) // json, searchMetadata
  public typealias JSONSuccess = (JSON, HTTPURLResponse) // json, response
  public typealias TokenSuccess = (Credential.OAuthAccessToken?, URLResponse) //token, response
}
