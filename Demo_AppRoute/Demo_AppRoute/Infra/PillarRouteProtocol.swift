//
//  PillarRouteProtocol.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/17.
//

import UIKit

protocol PillarRouteProtocol {

    static func viewController(for type: AppRouteType) -> UIViewController?
}
