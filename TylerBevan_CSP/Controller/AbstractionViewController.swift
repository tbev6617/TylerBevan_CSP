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
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return
        [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate"),
        ]
    } ()
    //helper method to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self;
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    //MARK:- Required protocol methods for UIPageViewControllerDataSource
    //swipe left method
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore
        viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        return orderedAbstractionViews[previousIndex]
    }
    //swipe right method
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter
        viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
        else
        {
            return nil
        }
        
        guard nextIndex < orderedAbstractionViews.count
        else
        {
            return orderedAbstractionViews.first
        }
        return orderedAbstractionViews[nextIndex]
    }
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
