//
//  GCVFaceAnnotation.swift
//  imagepicker
//
//  Created by aseo on 2019/01/27.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation

/// 顔の検知結果
public struct GCVFaceAnnotation: Decodable {
    /// 顔のロール角度
    public let rollAngle: Double
    /// 顔のパン角度
    public let panAngle: Double
    /// 顔のチルト角度
    public let tiltAngle: Double
    /// 信頼性
    public let detectionConfidence: Double
    /// 顔の各パーツにおける検出の精度
    public let landmarkingConfidence: Double
    /// 顔の各パーツに関する情報の配列
    public let landmarks: [GCVFaceLandMark]
    
    /// 顔の領域情報
    private let boundingPoly: GCVAnnotationVertices
    /// 顔の領域情報
    ///
    /// どこに顔が写っているかを示す
    public var boundingPolyVertices: [GCVVertice] {
        get {
            return boundingPoly.vertices
        }
    }
    
    /// 皮膚を含めた顔の領域情報
    private let fdBoundingPoly: GCVAnnotationVertices
    /// 皮膚を含めた顔の領域情報
    ///
    /// どこに顔が写っているかを示す
    public var fdBoundingPolyVertices: [GCVVertice] {
        get {
            return fdBoundingPoly.vertices
        }
    }
    
    /// 楽しみの感情の度合い
    public let joyLikelihood: GCVLikelihood
    /// 悲しみの感情の度合い
    public let sorrowLikelihood: GCVLikelihood
    /// 怒りの感情の度合い
    public let angerLikelihood: GCVLikelihood
    /// 驚きの感情の度合い
    public let surpriseLikelihood: GCVLikelihood
    /// 肌の露出の度合い
    public let underExposedLikelihood: GCVLikelihood
    /// ぼやけの度合い
    public let blurredLikelihood: GCVLikelihood
    /// 帽子か何かを被っている
    public let headwearLikelihood: GCVLikelihood
}
