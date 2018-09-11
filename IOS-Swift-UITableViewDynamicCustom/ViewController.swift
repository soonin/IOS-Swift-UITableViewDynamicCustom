//
//  ViewController.swift
//  IOS-Swift-UITableViewDynamicCustom
//
//  Created by Pooya on 2018-09-08.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let titlesF = [("Apple"),("Apricot"),("Banana"),("Grapes"),("Kiwi"),("Orange"),("Peach")]
    let desF = [("An apple is a sweet, edible fruit produced by an apple tree."),
                ("An apricot is a fruit, or the tree that bears the fruit, of several species in the genus Prunus (stone fruits)."),
                ("A banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa."),
                ("A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis."),
                ("Kiwifruit, or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia."),
                ("The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae. "),
                ("A peach is a soft, juicy and fleshy stone fruit produced by a peach tree.")]
    let imagesF = [UIImage(named: "apple"),
                   UIImage(named: "apricot"),
                   UIImage(named: "banana"),
                   UIImage(named: "grapes"),
                   UIImage(named: "kiwi"),
                   UIImage(named: "orange"),
                   UIImage(named: "peach")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableTableViewCell
        cell.imageCell.image = self.imagesF[indexPath .row]
        cell.titleLabel01.text = self.titlesF[indexPath .row]
        cell.textLabel02.text = self.desF[indexPath .row]
        return cell
    }


}

