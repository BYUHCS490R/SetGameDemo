//
//  SetGameViewController.swift
//  SetGameDemo
//
//  Created by Christopher Slade on 6/3/19.
//  Copyright © 2019 Christopher Slade. All rights reserved.
//

import UIKit

class SetGameViewController: UIViewController {

    @IBOutlet weak var boardView: SetGameBoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...12 {
            let cardView = SetCardView(frame: CGRect.zero)
            boardView.add(cardView: cardView)
        }
        
        // Do any additional setup after loading the view.
    }
    


}
