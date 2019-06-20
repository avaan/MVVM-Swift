//
//  ViewController.swift
//  MVVMSample
//
//  Created by Shanvaz on 20/06/2019.
//  Copyright © 2019 e-sealed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cvm : CellViewModel = CellViewModel()

    @IBAction func addmore(_ sender: Any) {
        cvm.getData()
    }
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   self.tableview.register(CustomViewCell.self, forCellReuseIdentifier: "CustomViewCell")
        
        self.tableview.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellReuseIdentifier: "CustomViewCell")
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        cvm.reloadList = { [weak self]() in
            self?.tableview.reloadData()
        }
        
        cvm.getData()
    }


}

extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cvm.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomViewCell
        
        cell.cellm = cvm.results?[indexPath.row]
        
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}

