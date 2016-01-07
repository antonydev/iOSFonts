//
//  ViewController.swift
//  iOSFonts
//
//  Created by antony on 1/7/16.
//  Copyright © 2016 antony. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var fontArray  = [String]();
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        fontArray = UIFont.familyNames() ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UItableViewDelegates ----------------------------------------------------
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return fontArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = UITableViewCell();
        
        let fontName  = fontArray[indexPath.row] as String;
        
        cell.textLabel!.font = UIFont(name: fontName, size: 20)
        
        cell.textLabel!.text = fontName;
        
        return cell;
    }

}

