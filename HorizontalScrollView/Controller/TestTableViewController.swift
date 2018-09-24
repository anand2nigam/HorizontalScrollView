//
//  TestTableViewController.swift
//  HorizontalScrollView
//
//  Created by Anand Nigam on 24/09/18.
//  Copyright © 2018 Anand Nigam. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TestTableViewController: UITableViewController {

 
    let apiURL = "http://swipestudio:coffeeboard@qa.swipestudio.co/api/feed"
    
    let dataModel = TestDataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 150
        
        getData(url: apiURL)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - TableView DataSource Methods



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testTableCells", for: indexPath) as! TestTableViewCell

        // Configure the cell...
        cell.insertedCollectionView.dataSource = self
        cell.insertedCollectionView.delegate = self

        return cell
    }
    

    // MARK:- Networking
    
    func getData(url: String) {
        Alamofire.request(apiURL, method: .get).responseJSON { (dataResponse) in
            if dataResponse.result.isSuccess {
                print("Got the data from the site")
                
               let dataInJSON = JSON(dataResponse.result.value!)
                
                print(dataInJSON)
            } else {
                print(" Error \(dataResponse.result.error)")
            }
        }
    }


    // MARK:- JSON Parsing
    
    func updateWithReceivedData(json: JSON) {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

// MARK:- CollectionView DataSource and Delegate Methods

extension TestTableViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCollectionCells", for: indexPath) as! TestCollectionViewCell
        
        cell.testLabel.text = "\(indexPath.row)"
        
        return cell
        
    }
    
    
}











