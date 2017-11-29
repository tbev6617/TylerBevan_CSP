//
//  InternetDetailViewController.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 11/29/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
{
    //MARK: Add GUI controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    private func setup() -> Void
    {
        
    }
}
