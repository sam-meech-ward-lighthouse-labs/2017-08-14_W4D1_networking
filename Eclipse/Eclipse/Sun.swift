//
//  Sun.swift
//  Eclipse
//
//  Created by Sam Meech-Ward on 2017-08-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class Sun: NSObject {
    
    let brightness: Double = 100
    var coverage: String?
//    var flares: [SolarFlare] = []
    var flares = [SolarFlare]()
    
    override init() {
        let flare = SolarFlare()
        print(flare.color)
        
        flare.flares.append("string")
//        flare.flares.append(Sun())
        
        NSLog("Swift string")
        
        if let duration = flare.duration {
            print(duration)
        }
        
        flares.append(flare)
    }

    func printCoverage() {
        if let coverage = coverage {
            print("Coverage: \(coverage)")
        } else {
            print("No coverage");
        }
    }
}
