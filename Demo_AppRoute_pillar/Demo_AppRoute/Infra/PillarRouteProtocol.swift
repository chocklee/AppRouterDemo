//
//  PillarRouteProtocol.swift
//  Demo_AppRoute
//
//  Created by Yuan Cao on 11/15/21.
//

import UIKit

protocol PillarRouteProtocol: AnyObject {

    func viewController(path: AppRouteType) -> UIViewController?
}
