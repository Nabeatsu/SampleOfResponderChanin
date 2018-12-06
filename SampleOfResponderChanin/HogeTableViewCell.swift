//
//  HogeTableViewCell.swift
//  SampleOfResponderChanin
//
//  Created by 田辺信之 on 2018/12/06.
//  Copyright © 2018年 田辺信之. All rights reserved.
//

import UIKit

class HogeTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tappedRetweetButton(_ sender: Any) {
        let tweet = Tweet()
        let action: TwitterAction = .share(tweet)
        self.notify(action)
    }
    
    @IBAction func tappedLikeButton(_ sender: Any) {
        let tweet = Tweet()
        let action: TwitterAction = .like(tweet)
        self.notify(action)
    }
    
    @IBAction func tappedReplyButton(_ sender: Any) {
        let tweet = Tweet()
        let action: TwitterAction = .share(tweet)
        self.notify(action)
    }
    
}
