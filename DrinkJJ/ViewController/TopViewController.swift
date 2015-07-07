//
//  TopViewController.swift
//  DrinkJJ
//
//  Created by Keisuke.K on 2015/07/06.
//  Copyright (c) 2015年 Keisuke.K. All rights reserved.
//

import UIKit
class TopViewController: UIViewController, UIScrollViewDelegate{
    
    //画面サイズ
    let screenRotationWidth = UIScreen.mainScreen().bounds.size.width
    let screenRotationHeight = UIScreen.mainScreen().bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        start()

    }
    

    func start(){
        // ボタンを生成する.
        let nextButton: UIButton = UIButton(frame: CGRectMake(0, 0, screenRotationWidth/2, screenRotationHeight/10))
        nextButton.backgroundColor = UIColor.redColor();
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("ドリンクを作る", forState: .Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height/1.5)
        nextButton.addTarget(self, action: "onClickMyButton", forControlEvents: .TouchUpInside)
        
        // ボタンを追加する.
        self.view.addSubview(nextButton);
        
    }
    
    
    func onClickMyButton(){
        // 遷移するViewを定義する.
        let genreSelectViewController: UIViewController = GenreSelectViewController()
        
        // アニメーションを設定する.
        genreSelectViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        // Viewの移動する.
        self.presentViewController(genreSelectViewController, animated: true, completion: nil)
        
    }

}
