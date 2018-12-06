//
//  ViewController.swift
//  SampleOfResponderChanin
//
//  Created by 田辺信之 on 2018/12/06.
//  Copyright © 2018年 田辺信之. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TwitterActionDelegate {
    func retweetButtonTapped(tweet: Tweet) {
        print("retweeted")
    }
    
    func likeButtonTapped(tweet: Tweet) {
        print("liked")
    }
    
    func shareButtonTapped(tweet: Tweet) {
        print("shared")
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UINib(nibName: "HogeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }


}

