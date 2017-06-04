//
//  BoardViewController.swift
//  NewsBoard
//
//  Created by DineshKumar on 03/06/17.
//  Copyright © 2017 DineshKumar. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableBoardView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let boardViewCellNibName = UINib(nibName: "BoardViewCellTableViewCell", bundle: nil)
        self.tableBoardView.register(boardViewCellNibName, forCellReuseIdentifier: "Cell")
        self.tableBoardView.delegate = self
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? BoardViewCellTableViewCell
        cell?.layer.cornerRadius = 40.0;
        
        cell?.layer.masksToBounds = false;

        cell?.brandName.text = "The Times of India"
        cell?.newsHeadlineText.text = "the command registerNib should be called in ViewDidLoad, but not in each call of cell for row"
        cell?.newsContentText.text = "what is 'bluecell'? In your call-back cellforTable.., you assign cell = blucell -> this can cause your problems."
        
        return cell!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

