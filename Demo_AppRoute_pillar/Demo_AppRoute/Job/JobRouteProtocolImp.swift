//
//  JobRouteProtocolImp.swift
//  Demo_AppRoute
//
//  Created by Yuan Cao on 11/15/21.
//

import UIKit

class JobRouteProtocolImp: PillarRouteProtocol {

    func viewController(path: AppRouteType) -> UIViewController? {

        guard case .job(let routeType) = path else {
            // log(you are not job pillar ...)
            return nil
        }

        switch routeType {
            case .job:
                return ProfileViewController()
            case .jobHome:
                return nil
        }
    }
}
