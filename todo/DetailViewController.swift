//
//  DetailViewController.swift
//  todo
//
//  Created by Yako Kobayashi on 2020/06/25.
//  Copyright © 2020 Step App School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var masterVC:MasterViewController? = nil

    @IBOutlet var tfTitle: UITextField!
    @IBOutlet var tfDescription: UITextField!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let title = tfTitle {
                title.text = detail.title
            }
            if let description = tfDescription {
                description.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        detailItem?.title = tfTitle.text
        detailItem?.description = tfDescription.text
        
        masterVC?.reloadTable()
        
        super.viewDidDisappear(animated)
    }
    

    var detailItem: todo_RS? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

