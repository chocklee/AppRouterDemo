//
//  ProfileRouteProtocolImp.swift
//  Demo_AppRoute
//
//  Created by Yuan Cao on 11/15/21.
//

import UIKit

class ProfileRouteProtocolImp: PillarRouteProtocol {

    func viewController(path: AppRouteType) -> UIViewController? {
        guard case .profile(let routeType) = path else {
            // log(you are not profile pillar ...)
            return nil
        }

        switch routeType {
            case .profile(let name, let delegate, let block):
                return JobViewController(name: name, delegate: delegate, block: block)
        }
    }
}
