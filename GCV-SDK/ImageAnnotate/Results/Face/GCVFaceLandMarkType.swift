//
//  GCVFaceLandMarkType.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

public enum GCVFaceLandMarkType: String, Decodable {
    /// 謎のパーツ
    case unknownLandmark = "UNKNOWN_LANDMARK"
    /// 左目
    case leftEye = "LEFT_EYE"
    /// 右目
    case rightEye = "RIGHT_EYE"
    /// 左眉の左端
    case leftOfLeftEyebrow = "LEFT_OF_LEFT_EYEBROW"
    /// 左眉の右端
    case rightOfLeftEyebrow = "RIGHT_OF_LEFT_EYEBROW"
    /// 左眉の上部中間点
    case leftEyebrowUpperMidpoint = "LEFT_EYEBROW_UPPER_MIDPOINT"
    /// 右眉の左端
    case leftOfRightEyebrow = "LEFT_OF_RIGHT_EYEBROW"
    /// 右眉の右端
    case rightOfRightEyebrow = "RIGHT_OF_RIGHT_EYEBROW"
    /// 右眉の上部中間点
    case rightEyebrowUpperMidpoint = "RIGHT_EYEBROW_UPPER_MIDPOINT"
    /// 両目の中間点
    case midpointBetweenEyes = "MIDPOINT_BETWEEN_EYES"
    /// 鼻の先端
    case noseTip = "NOSE_TIP"
    /// 上唇
    case upperLip = "UPPER_LIP"
    /// 下唇
    case lowerLip = "LOWER_LIP"
    /// 口の左端
    case mouthLeft = "MOUTH_LEFT"
    /// 口の右端
    case mouthRight = "MOUTH_RIGHT"
    /// 口の中間
    case mouthCenter = "MOUTH_CENTER"
    /// 鼻の右端
    case noseBottomRight = "NOSE_BOTTOM_RIGHT"
    /// 鼻の左端
    case noseBottomLeft = "NOSE_BOTTOM_LEFT"
    /// 鼻の中間
    case noseBottomCenter = "NOSE_BOTTOM_CENTER"
    /// 左目の上端
    case leftEyeTopBoundary = "LEFT_EYE_TOP_BOUNDARY"
    /// 左目の右端
    case leftEyeRightCorner = "LEFT_EYE_RIGHT_CORNER"
    /// 左目の下端
    case leftEyeBottomBoundary = "LEFT_EYE_BOTTOM_BOUNDARY"
    /// 左目の左端
    case leftEyeLeftCorner = "LEFT_EYE_LEFT_CORNER"
    /// 右目の上端
    case rightEyeTopBoundary = "RIGHT_EYE_TOP_BOUNDARY"
    /// 右目の右端
    case rightEyeRightCorner = "RIGHT_EYE_RIGHT_CORNER"
    /// 右目の下端
    case rightEyeBottomBoundary = "RIGHT_EYE_BOTTOM_BOUNDARY"
    /// 右目の左端
    case rightEyeLeftCorner = "RIGHT_EYE_LEFT_CORNER"
    /// 左耳の耳点
    case leftEarTragion = "LEFT_EAR_TRAGION"
    /// 右耳の耳点
    case rightEarTragion = "RIGHT_EAR_TRAGION"
    /// 左目の瞳孔
    case leftEyePupil = "LEFT_EYE_PUPIL"
    /// 右目の瞳孔
    case rightEyePupil = "RIGHT_EYE_PUPIL"
    /// 眉間
    case foreheadGlabella = "FOREHEAD_GLABELLA"
    /// 顎の下部
    case chinGnathion = "CHIN_GNATHION"
    /// 顎の左端
    case chinLeftGonion = "CHIN_LEFT_GONION"
    /// 顎の右端
    case chinRightGonion = "CHIN_RIGHT_GONION"
}
