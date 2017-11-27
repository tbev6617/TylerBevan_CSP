//
//  AbstractionViewController.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 10/26/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{
    //MARK: Array of subviews
    private (set) lazy var orderedAbractionViews : [UIViewController] =
    {
        return
        [
            self.newAbstractnViewController(abstractionLevel: "Block"),
            self.newAbstractnViewController(abstractionLevel: "Java"),
            self.newAbstractnViewController(abstractionLevel: "ByteCode"),
            self.newAbstractnViewController(abstractionLevel: "Binary"),
            self.newAbstractnViewController(abstractionLevel: "AndGate"),
        ]
    } ()
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
