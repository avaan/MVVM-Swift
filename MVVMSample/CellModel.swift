//
//  CellModel.swift
//  MVVMSample
//
//  Created by Shanvaz on 20/06/2019.
//  Copyright © 2019 e-sealed. All rights reserved.
//

import Foundation

class  CellModel : Codable {
    var imgURL : String?
    var name : String?
    var name2 :String?
    
    init(imgURL:String,name:String,name2:String) {
        self.imgURL = imgURL
        self.name = name
        self.name2 = name2
    }
}


class Results : Codable{
    var resultsArray : [CellModel]?
    
    init(resultsArray:[CellModel]) {
        self.resultsArray = resultsArray
    }
}
