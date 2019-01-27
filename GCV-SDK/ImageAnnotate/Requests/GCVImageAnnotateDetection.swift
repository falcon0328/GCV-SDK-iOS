//
//  GCVImageAnnotateDetection.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

public enum GCVImageAnnotateDetection: String, Encodable {
    case label = "LABEL_DETECTION"
    case face = "FACE_DETECTION"
    case logo = "LOGO_DETECTION"
    case text = "TEXT_DETECTION"
    case landMark = "LANDMARK_DETECTION"
    case imageProperties = "IMAGE_PROPERTIES"
    case safeSearch = "SAFE_SEARCH_DETECTION"
}
