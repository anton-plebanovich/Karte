//
//  Mode.swift
//  Karte
//
//  Created by Kilian Költzsch on 13.04.17.
//  Copyright © 2017 Karte. All rights reserved.
//

import Foundation
import MapKit

public enum Mode {
    // case `default`
    case walking
    case bicycling
    case driving
    case transit

    func appleMaps() throws -> [String: String] {
        switch self {
        // Omitting `default` for ease of use. Hopefully Maps.app defaults to that when not setting a mode...
        // case .default: return [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDefault]
        case .walking: return [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking]
        case .driving: return [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        case .transit: return [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeTransit]
        default: throw Error.unsupportedMode
        }
    }

    func googleMaps() throws -> String {
        switch self {
        case .walking: return "walking"
        case .bicycling: return "bicycling"
        case .driving: return "driving"
        case .transit: return "transit"
        default: throw Error.unsupportedMode
        }
    }
}
