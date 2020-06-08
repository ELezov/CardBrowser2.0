//
//  SithTranslator.swift
//  CardBrowser2.0
//
//  Created by EugenKGD on 08.06.2020.
//  Copyright © 2020 Alexey Demedeckiy. All rights reserved.
//

import Foundation
//https://rapidapi.com/orthosie/api/sith-translator

class SithTranslator {
    private let headers = [
        "x-rapidapi-host": "sith.p.rapidapi.com",
        "x-rapidapi-key": "9dd8137935msh6499c8baffc8c56p16e8f0jsnf1d84625c381"
    ]
    
    func translate(text: String) {
        let request = NSMutableURLRequest(url:
               NSURL(string: "https://sith.p.rapidapi.com/sith.json?text=I%20went%20to%20coruscant%20which%20was%20ten%20parsec%20away!")! as URL,
                                                     cachePolicy: .useProtocolCachePolicy,
                                                     timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }
        })

        dataTask.resume()
    }
    
}


