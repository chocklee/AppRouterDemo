//
//  AppRouteProtocol.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

protocol AppRouteProtocol: AnyObject {

    func viewController(path: AppRouteType) -> UIViewController?
}
