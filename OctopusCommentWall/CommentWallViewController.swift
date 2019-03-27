//
//  CommentWallViewController.swift
//  commentWall
//
//  Created by Borko Tomic on 12/21/18.
//  Copyright © 2018 Borko Tomic. All rights reserved.
//

import UIKit
import Flutter
open class CommentWallViewController: FlutterViewController {
    
    let FLUTTER_MODULE_KEY = "flutterModule?"
    let TOKEN_KEY = "token="
    let TENANT_KEY = "tenant="
    let CHANNEL_KEY = "channelUid="
    let IS_PARTNER_KEY = "isPartner="
    let PERMISSION_LEVEL_KEY = "level="
    let BASE_URL_KEY = "baseUrl="
    let BASE_URL_API_SIFIX = "/api/"
    let USER_ID_KEY = "userUid="
    let TOOLBAR_COLOR = "toolbarColor="
    let TOOLBAR_TEXT_COLOR = "toolbarTextColor="
    let SEPARATOR_KEY = "&"
    
    var flutterRoute = ""
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitialRoute(flutterRoute)
    }
    
    open func setupRouteWith(token: String,
                             tenanntKey: String,
                             channelUid: String,
                             isPartner: Bool,
                             permissionLevel: Int,
                             userUid: String,
                             baseURL: String?,
                             toolbarColor: UIColor,
                             toolbarTextColor: UIColor) {
        let tokenPart = TOKEN_KEY + token + SEPARATOR_KEY
        let tenantPart = TENANT_KEY + tenanntKey + SEPARATOR_KEY
        let channelPart = CHANNEL_KEY + channelUid + SEPARATOR_KEY
        let isPartnerPart = IS_PARTNER_KEY + (isPartner ? "true" : "false")  + SEPARATOR_KEY
        let permissionLevelPart = PERMISSION_LEVEL_KEY + "\(permissionLevel)"
        var baseUrlPart = ""
        if let baseURL = baseURL {
            baseUrlPart = SEPARATOR_KEY + BASE_URL_KEY + baseURL + BASE_URL_API_SIFIX
        }
        let userUidPart = SEPARATOR_KEY + USER_ID_KEY + userUid
        let toolbarColorPart = SEPARATOR_KEY + TOOLBAR_COLOR + toolbarColor.toFlutterColorString()
        let toolbarTextColorPart = SEPARATOR_KEY + TOOLBAR_TEXT_COLOR + toolbarTextColor.toFlutterColorString()
        flutterRoute = FLUTTER_MODULE_KEY + tokenPart + tenantPart + channelPart + isPartnerPart + permissionLevelPart + baseUrlPart + userUidPart + toolbarColorPart + toolbarTextColorPart
    }
}
