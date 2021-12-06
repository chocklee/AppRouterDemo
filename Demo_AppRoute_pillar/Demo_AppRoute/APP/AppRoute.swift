//
//  AppRoute.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class AppRoute {

    public static var shared = AppRoute()

    var jobPillarRoute: PillarRouteProtocol?
    var profilePillarRoute: PillarRouteProtocol?

    private func pillar(from type: AppRouteType) -> PillarRouteProtocol? {
        switch type.pillar {
            case .jobPillar:
                return jobPillarRoute
            case .profilePillar:
                return profilePillarRoute
        }
    }

    func viewController(for type: AppRouteType) -> UIViewController? {
        guard let pillar = pillar(from: type) else {
            return nil
        }
        return pillar.viewController(path: type)
    }
}
