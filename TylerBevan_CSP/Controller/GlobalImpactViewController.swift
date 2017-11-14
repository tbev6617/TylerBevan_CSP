//
//  GlobalImpactViewController.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 10/26/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class GlobalImpactViewController: UIViewController
{
    
    @IBOutlet weak var waterImage: UIImageView!
    @IBOutlet weak var planImage: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        waterImage.image = UIImage(named: "clean water")
        planImage.image = UIImage(named: "plan")
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
