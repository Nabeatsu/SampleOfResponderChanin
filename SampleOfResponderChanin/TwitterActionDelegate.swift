//
//  TwitterActionDelegate.swift
//  SampleOfResponderChanin
//
//  Created by 田辺信之 on 2018/12/06.
//  Copyright © 2018年 田辺信之. All rights reserved.
//

import Foundation
import UIKit

struct Tweet {
    // 実際の処理
}

// Action
enum TwitterAction {
    case retweet(Tweet)
    case like(Tweet)
    case share(Tweet)
}

// Delegate
protocol TwitterActionDelegate {
    func retweetButtonTapped(tweet: Tweet)
    func likeButtonTapped(tweet: Tweet)
    func shareButtonTapped(tweet: Tweet)
}


// ViewEvent
// 誰とどうディスパッチするか
protocol ViewEvent {
    associatedtype EventHandler
    func notify(to handler: EventHandler)
}


extension TwitterAction: ViewEvent {
    func notify(to handler: TwitterActionDelegate) {
        switch self {
        case .retweet(let tweet):
            handler.retweetButtonTapped(tweet: tweet)
        case .like(let tweet):
            handler.likeButtonTapped(tweet: tweet)
        case .share(let tweet):
            handler.shareButtonTapped(tweet: tweet)
        }
    }
}
