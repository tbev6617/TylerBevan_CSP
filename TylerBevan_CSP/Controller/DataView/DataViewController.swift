//
//  DataViewController.swift
//  TylerBevan_CSP
//
//  Created by Bevan, Tyler on 10/26/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class DataViewController: UITableViewController
{

    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    var bucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    lazy var bucketList : [BucketItem] =
    {
        return loadBucketListFromFile()
    } ()
    
    private func loadBucketListFromFile() -> [BucketItem]
    {
        var items = [BucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv")
        {
            do
            {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(separatedBy: "\n")
                for line in bucketLines
                {
                    let item = line.components(separatedBy: ",")
                    items.append(BucketItem(contents: item[0], author: item[1]))
                }
            }
            catch
            {
                print("File load error")
            }
        }
        return items;
    }
    
    //MARK: TableView code
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return bucketList.count
    }
    
    //TODO step 4C override public func tableView()
    
    private func randomEmoji() -> String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UIInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji
    }
    
    private func updateCellView() -> Void
    {
        if (bucketItem != nil)
        {
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "author goes here"
            bucketItemText.text = "text goes here"
        }
        bucketItemSymbol.text = randomEmojiSymbol()
    }
    
    public override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    public override func setSelected(_ selected : Bool, animated : Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
