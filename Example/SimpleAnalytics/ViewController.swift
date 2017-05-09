//
//  ViewController.swift
//  SimpleAnalytics
//
//  Created by git on 05/08/2017.
//  Copyright (c) 2017 git. All rights reserved.
//

import UIKit
import SimpleAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func testPageNavAnalytics(_ sender: Any) {
        AnalyticsAppPageView.onboardFirstPage.log()
    }
    
    @IBAction func testUserActionAnalytics(_ sender: Any) {
        AnalyticsAction.general(action: "TEST_ACTION", label: "TEST_ACTION_LABEL", value: "TEST_VALUE").log()
    }

}

