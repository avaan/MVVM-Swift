//
//  CustomViewCell.swift
//  MVVMSample
//
//  Created by Shanvaz on 20/06/2019.
//  Copyright © 2019 e-sealed. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell {
    
    @IBOutlet weak var img : UIImageView!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var name2 : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var cellm : CellModel?{
        didSet{
            setData()
        }
    }
    
    func setData(){
        //self.img.image =
        name.text = cellm?.name
        name2.text = cellm?.name2
    }
    
}
