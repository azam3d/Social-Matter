//
//  ViewCellContent.swift
//  Social Matter
//
//  Created by Muhammad Azam Baderi on 21/02/2016.
//  Copyright © 2016 Twebble. All rights reserved.
//

import UIKit

class ViewCellContent: UITableViewCell {
  @IBOutlet weak var myImageView: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    myImageView.animationImages = [
      UIImage(named: "0001.png")!,
      UIImage(named: "0002.png")!,
      UIImage(named: "0003.png")!,
      UIImage(named: "0004.png")!,
      UIImage(named: "0005.png")!,
      UIImage(named: "0006.png")!,
      UIImage(named: "0007.png")!,
      UIImage(named: "0008.png")!,
      UIImage(named: "0009.png")!,
      UIImage(named: "0010.png")!,
      UIImage(named: "0011.png")!,
      UIImage(named: "0012.png")!,
      UIImage(named: "0013.png")!,
      UIImage(named: "0014.png")!,
      UIImage(named: "0015.png")!,
      UIImage(named: "0016.png")!,
      UIImage(named: "0017.png")!,
      UIImage(named: "0018.png")!,
      UIImage(named: "0019.png")!,
      UIImage(named: "0020.png")!
    ]
    
    myImageView.animationDuration = 3
    myImageView.startAnimating()
  }
  

}
