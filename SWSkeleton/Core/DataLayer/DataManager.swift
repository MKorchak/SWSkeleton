//
//  DataManager.swift
//  SWSkeleton
//
//  Created by Korchak Mykhail on 10.01.18.
//  Copyright © 2018 Korchak Mykhail. All rights reserved.
//

import Foundation
import Alamofire

/// MARK: - DataManager class
/// This class is responsible for server manager, error parser (singletone)
/// You can change this properties to your custom

public final class DataManager: NSObject {
    public static let shared = DataManager()
    
    open var loaderView: LoadingViewType = DefaultLoaderView()
    open var serverConnectionErrorMessage: String = "No internet connection"
    open var sessionManager: SessionManager = SessionManager.default
    
    open var validStatusCodeRange = 200..<300
    open var internetConnectionErrorStatusCode = 0
    open var dataBaseErrorStatusCode = 5000
}
