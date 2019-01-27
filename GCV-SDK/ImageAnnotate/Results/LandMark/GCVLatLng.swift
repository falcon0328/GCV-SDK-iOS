//
//  GCVLatLng.swift
//  imagepicker
//
//  Created by aseo on 2019/01/26.
//  Copyright © 2019年 Sara Robinson. All rights reserved.
//

import Foundation
import MapKit

/// 位置情報を表す構造体
struct GCVLatLng: Decodable {
    /// 緯度
    public let latitude: CLLocationDegrees
    /// 経度
    public let longitude: CLLocationDegrees
}
