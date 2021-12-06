//
//  AppRouteDelegate.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

protocol AppRouteDelegate: AnyObject {

    func viewController(for type: AppRouteType) -> UIViewController?
}
