//
//  AlgorithmsViewController.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 10/26/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    @IBOutlet weak var codeImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        codeImage.image = UIImage(named : "sampleJaveImage")
    }
    

    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        //makes algorithm steps array
        let algorithm : String = "These are the instructions to create a java project using Eclipse and Github\n"
        let firstStep : String = "Open up Eclipse and Github"
        let secondStep : String = "Click file > New > Java project"
        let thirdStep : String = "Name the project using CamelCase and create the project"
        let fourthStep : String = "Create a repository in GitHub with the same name as your project and set the classpath to where your project is located"
        let fifthStep : String = "Click Repository > Repository Settings > Ignored Files and in the text box type .DS_Store, bin/ and *.Class Then click save"
        let sixthStep : String = "In your source folder create two packages, one ending in .controller and one ending in .model"
        let seventhStep : String = "In your .controller package create a controller class and a runner class"
        let eighthStep : String = "Create your project from there"
        algorithmSteps = [firstStep, secondStep, thirdStep, fourthStep, fifthStep, sixthStep, seventhStep, eighthStep]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            //creates a bullet and text and appends it to the String
            let bullet : String = "▪️"
            let formattedStep : String = "\n" + bullet + step
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range : NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
}
