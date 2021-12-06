//
//  AppRouteType.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

enum Pillar {

    case profile
    case job
}

enum AppRouteType {

    var pillar: Pillar {
        switch self {
        case .profile:
            return .profile
        case .job:
            return .job
        }
    }

    case profile(_ routeType: ProfileRouteType)
    case job(_ routeType: JobRouteType)
}
