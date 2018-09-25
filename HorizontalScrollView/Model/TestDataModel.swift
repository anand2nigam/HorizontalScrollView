//
//  TestDataModel.swift
//  HorizontalScrollView
//
//  Created by Anand Nigam on 24/09/18.
//  Copyright © 2018 Anand Nigam. All rights reserved.
//

import Foundation

//class TableDataView {
//    let tableDataView: [CollectionDataView]
//    
//    init(tableDataView: [CollectionDataView]) {
//        self.tableDataView = tableDataView
//    }
//    
//}

class CollectionDataView {
    let collectionDataView:[DataView]
    
    init(collectionDataView: [DataView]) {
        self.collectionDataView = collectionDataView
    }
}


class DataView {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
