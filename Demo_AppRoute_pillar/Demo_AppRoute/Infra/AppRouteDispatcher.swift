//
//  AppRouteDispatcher.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class AppRouteDispatcher {

    static let shared = AppRouteDispatcher()

    weak var delegate: AppRouteProtocol?

    func viewController(for path: AppRouteType) -> UIViewController? {
        return delegate?.viewController(path: path)
    }
}
