//
//  ViewController.swift
//  Diary
//
//  Created by Victor Oliveira on 13/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "diaryCell", for: indexPath)
        cell.textLabel?.text = "Diario"
        return cell
    }
    

    
    @IBOutlet weak var diaryMainTable: UITableView!
    override func viewDidLoad() {
        diaryMainTable.delegate = self
        diaryMainTable.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

