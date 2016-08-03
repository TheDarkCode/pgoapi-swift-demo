//
//  Example.swift
//  pgoapi
//
//  Created by Luke Sapan on 7/21/16.
//  Copyright © 2016 Coadstal. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController, AuthDelegate, PGoApiDelegate {
    
    var pokemonToUpload: [AnyObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.sharedInstance.delegate = self
        Auth.sharedInstance.login("\(TEST_PTC_USERNAME)", password: "\(TEST_PTC_PASSWORD)")
    }
    
    func didReceiveAuth() {
        print("Auth received!!")
        print("Starting simulation...")
        let request = PGoApiRequest()
        request.simulateAppStart()
        request.makeRequest(.Login, delegate: self)
    }
    
    func didNotReceiveAuth() {
        print("Failed to auth!")
    }
    
    func didReceiveApiResponse(intent: ApiIntent, response: ApiResponse) {
        print("Got that API response: \(intent)")
        if (intent == .Login) {
            let request = PGoApiRequest()
            Location.alt = 0
            Location.lat = TEST_LATITUDE
            Location.long = TEST_LONGITUDE
            request.getPlayer()
            request.makeRequest(.getPlayer, delegate: self)
            Api.endpoint = "https://\((response.response as! Pogoprotos.Networking.Envelopes.ResponseEnvelope).apiUrl)/rpc"
            Api.authToken = (response.response as! Pogoprotos.Networking.Envelopes.ResponseEnvelope).authTicket
            Api.receivedToken = true
            print("New endpoint: \(Api.endpoint)")
            let request2 = PGoApiRequest()
            request2.getMapObjects(TEST_LATITUDE, longitude: TEST_LONGITUDE)
            request2.makeRequest(.GetMapObjects, delegate: self)
        } else if (intent == .GetMapObjects) {
            print("Got map objects!")
            print("---------\n---------")
            print(response.response)
            print(response.subresponses)
            
            let r = response.subresponses[0] as! Pogoprotos.Networking.Responses.GetMapObjectsResponse
            
            var catchablePokemon: [AnyObject] = []
            var wildPokemon: [AnyObject] = []
            var nearbyPokemon: [AnyObject] = []
            var selectedLocation: Pogoprotos.Map.Fort.FortData?
            
            guard let nextLocation: Pogoprotos.Map.Fort.FortData = r.mapCells[0].forts[0] else {
                guard let nextLocation: Pogoprotos.Map.Fort.FortData = r.mapCells[1].forts[0] else {
                    guard let nextLocation: Pogoprotos.Map.Fort.FortData = r.mapCells[2].forts[0] else {
                        guard let nextLocation: Pogoprotos.Map.Fort.FortData = r.mapCells[3].forts[0] else {
                            
                            return
                            
                        }
                        return
                        
                    }
                    return
                    
                }
                return
                
            }
            
            for mapCell in r.mapCells {
                
                //print(mapCell.s2CellId)
                for catchable in mapCell.catchablePokemons {
                    
                    catchablePokemon.append(catchable)
                    
                }
                
                for wild in mapCell.wildPokemons {
                    
                    wildPokemon.append(wild)
                    
                }
                
                for nearby in mapCell.nearbyPokemons {
                    
                    nearbyPokemon.append(nearby)
                    
                }
                
                
            }
            
            if catchablePokemon.count > 0 {
                print("Got catchable objects!")
                print("---------\n---------")
                print(catchablePokemon.debugDescription)
                
                for pokemon in (catchablePokemon as! [Pogoprotos.Map.Pokemon.MapPokemon])  {
                    
                    pokemonToUpload.append(pokemon)
                    
                     // set location to pokemon.Latitude / Longitude
//                    let request2 = PGoApiRequest()
//                    request2.getMapObjects(pokemon.latitude ?? Location.lat, longitude: pokemon.longitude ?? Location.long)
//                    request2.makeRequest(.GetMapObjects, delegate: self)
                    
                    
                    // EncounterPokemon response
                    
                    // Pokemon CP
                    
                    // Pokemon IV
                    
                    // Catch Pokemon Response
                    
                    
                    
                }
                
            }
            if wildPokemon.count > 0 {
                print("Got wild objects!")
                print("---------\n---------")
                print(wildPokemon.debugDescription)
            }
            if nearbyPokemon.count > 0 {
                print("Got nearby objects!")
                print("---------\n---------")
                print(nearbyPokemon.debugDescription)
            }
            print("Pokemon to Upload!")
            print("---------\n---------")
            print(pokemonToUpload.debugDescription)
            
            print("Next Location!")
            print("---------\n---------")
            print((nextLocation.debugDescription ?? "No next location."))
            
            selectedLocation = nextLocation
            
            let request2 = PGoApiRequest()
            request2.getMapObjects(selectedLocation?.latitude ?? Location.lat, longitude: selectedLocation?.longitude ?? Location.long)
            request2.makeRequest(.GetMapObjects, delegate: self)
            
        }
    }
    
    func didReceiveApiError(intent: ApiIntent, statusCode: Int?) {
        print("API Error: \(statusCode)")
    }
    
}

