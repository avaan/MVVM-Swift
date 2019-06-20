//
//  CellViewModel.swift
//  MVVMSample
//
//  Created by Shanvaz on 20/06/2019.
//  Copyright © 2019 e-sealed. All rights reserved.
//

import Foundation


class CellViewModel: NSObject {
    
    var reloadList = {() -> () in }
    
    var results : [CellModel]? = []{
        didSet{
            reloadList()
        }
    }
    
    
    func getData(){
        
        results?.append(CellModel(imgURL: "", name: "Cool", name2: "hello i am fine"))
        results?.append(CellModel(imgURL: "", name: "Cool2", name2: "hello i am fine2"))
        results?.append(CellModel(imgURL: "", name: "Cool3", name2: "hello i am fine3"))
        results?.append(CellModel(imgURL: "", name: "Cool4", name2: "hello i am fine4"))
        
    }
    
}
