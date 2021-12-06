//
//  InfraDependencyModule.swift
//  Demo_AppRoute
//
//  Created by Changhao Li on 2021/11/15.
//

import UIKit

class InfraDependencyModule: InfraDependencyCompontent {

    var appRouteDispatcher: AppRouteDispatcher {
        return AppRouteDispatcher.shared
    }
}
