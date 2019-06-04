//
//  SetGameBoardView.swift
//  SetGameDemo
//
//  Created by Christopher Slade on 6/3/19.
//  Copyright © 2019 Christopher Slade. All rights reserved.
//

import UIKit

class SetGameBoardView: UIView {

    private(set) var cardViews = [SetCardView]()
    
    var grid = Grid(layout: .aspectRatio((5.0/3.0)))
    
    func add(cardView: SetCardView) {
        cardViews.append(cardView)
        addSubview(cardView)
        setNeedsLayout()
    }
    
    override func layoutSubviews() {
        grid.cellCount = cardViews.count
        grid.frame = bounds
        for index in cardViews.indices {
            if let rect = grid[index] {
                cardViews[index].frame = rect.insetBy(dx: 5.0, dy: 5.0)
            }
            
        }
    }

}
