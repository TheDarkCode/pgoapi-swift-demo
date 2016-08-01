//
//  Globals.swift
//  pgomap
//
//  Created by Luke Sapan on 7/20/16.
//  Copyright © 2016 Coadstal. All rights reserved.
//

import Foundation

let TEST_PTC_USERNAME = ""
let TEST_PTC_PASSWORD = ""
let TEST_LATITUDE = 43.20
let TEST_LONGITUDE = -118.23

struct Endpoint {
    static let LoginInfo = "https://sso.pokemon.com/sso/login?service=https%3A%2F%2Fsso.pokemon.com%2Fsso%2Foauth2.0%2FcallbackAuthorize"
    static let LoginTicket = "https://sso.pokemon.com/sso/login?service=https%3A%2F%2Fsso.pokemon.com%2Fsso%2Foauth2.0%2FcallbackAuthorize"
    static let LoginOAuth = "https://sso.pokemon.com/sso/oauth2.0/accessToken"
    static let Rpc = "https://pgorelease.nianticlabs.com/plfe/rpc"
}

struct Api {
    static var endpoint = Endpoint.Rpc
    static let id: UInt64 = 8145806132888207460
    static let SettingsHash = "05daf51635c82611d1aac95c0b051d3ec088a930"
    static var receivedToken = false
    static var authToken: Pogoprotos.Networking.Envelopes.AuthTicket = Pogoprotos.Networking.Envelopes.AuthTicket()
}

struct Location {
    static var lat:Double = 0
    static var long:Double = 0
    static var alt:Double = 0
}

enum ApiIntent {
    case Login
    case GetMapObjects
    case getPlayer
}
