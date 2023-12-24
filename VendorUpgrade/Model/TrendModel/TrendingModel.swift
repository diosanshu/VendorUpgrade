//
//  TrendingModel.swift
//  VendorUpgrade
//
//  Created by Haadhya on 23/12/23.
//

import Foundation
struct TrendingModel : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}
