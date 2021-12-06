//
//  AppRouteType.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

protocol SomeViewControllerProtocol: AnyObject {

}

typealias SwiftBlock = (_ statusCode: String, _ name: String) -> Void

enum Pillar {
    case profilePillar
    case jobPillar
}

enum ProfileRouteType {
    case profile(name: String, delegate: SomeViewControllerProtocol?, block: SwiftBlock?)
}

enum JobRouteType {
    case job
    case jobHome
}

enum AppRouteType {

    var pillar: Pillar {
        switch self {
        case .profile:
            return .profilePillar
        case .job:
            return .jobPillar
        }
    }

    case profile(_ routeType: ProfileRouteType)
    case job(_ routeType: JobRouteType)
}
