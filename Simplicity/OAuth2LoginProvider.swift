//
//  OAuth2LoginProvider.swift
//  Simplicity
//
//  Created by Edward Jiang on 5/10/16.
//  Copyright © 2016 Stormpath. All rights reserved.
//

import Foundation

public protocol OAuth2LoginProvider: LoginProvider {
    var clientId: String { get }
    var scopes: Set<String> { get set }
    var grantType: OAuth2GrantType { get }
}

public protocol OAuth2Scopes {
    var set: Set<String> { get set }
    var string: String { get }
}

public extension OAuth2Scopes {
    public var string: String {
        return set.joinWithSeparator(" ")
    }
}

public enum OAuth2GrantType {
    case AuthorizationCode, Implicit, Custom
}