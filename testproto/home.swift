//
//  home.swift
//  testproto
//
//  Created by minsang on 7/26/15.
//  Copyright (c) 2015 minsang. All rights reserved.
//  Tumblr Animations

import UIKit

class home: UIViewController {


    @IBOutlet weak var fab: UIButton!
    @IBOutlet weak var actionview: UIView!
    @IBOutlet weak var writebtn: UIImageView!
    @IBOutlet weak var linkbtn: UIImageView!
    @IBOutlet weak var photobtn: UIImageView!
    @IBOutlet weak var quotebtn: UIImageView!
    @IBOutlet weak var helpbtn: UIImageView!
    @IBOutlet weak var gifbtn: UIImageView!
    @IBOutlet weak var nevermindbtn: UIButton!
    
    
    let initY = 568
    
    var btnList:Array<UIImageView> = []
    var xposarray = [46,131,215]
    var yposarray = [215,295]

    @IBAction func fabtapped(sender: UIButton) {
        
        UIView.animateWithDuration(0.3, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: nil, animations: {
            self.fab.transform = CGAffineTransformMakeScale(0.5, 0.5)
            self.fab.alpha = 0
            self.actionview.alpha = 0.9
            }, completion: { (finished: Bool) in
        })

        for btn in btnList {
            var indexof = find(btnList,btn)!
            var mydelay = 0.1*Double(indexof)
            var myxpos: Int
            var myypos: Int
            
            if Int(indexof) <= 2{
                myxpos = xposarray[indexof]
                myypos = yposarray[0]
            } else {
                myxpos = xposarray[indexof-3]
                myypos = yposarray[1]
            }
            
            UIImageView.animateWithDuration(0.3, delay:mydelay,usingSpringWithDamping:0.8, initialSpringVelocity: 0.5, options:nil,  animations: {
                btn.frame.origin = CGPoint(x:myxpos,y:myypos)
                }, completion:{(finished:Bool) in
            })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: nil, animations: {
            self.nevermindbtn.frame.origin = CGPoint(x:110,y:500)
            }, completion: { (finished: Bool) in
        })

    }
    
    
    @IBAction func nevermindpressed(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: nil, animations: {
            self.fab.transform = CGAffineTransformMakeScale(1, 1)
            self.fab.alpha = 1
            self.actionview.alpha = 0
            }, completion: { (finished: Bool) in
        })

        for btn in btnList {
            var indexof = find(btnList,btn)!
            var mydelay: Double
            var myxpos: Int
            var myypos: Int
            
            if Int(indexof) <= 2{
                myxpos = xposarray[indexof]
                mydelay = 0.1*Double(indexof)
            } else {
                myxpos = xposarray[indexof-3]
                mydelay = 0.1*Double(indexof-3)
            }
            
            UIImageView.animateWithDuration(0.3, delay:mydelay,usingSpringWithDamping:0.8, initialSpringVelocity: 0.5, options:nil,  animations: {
                btn.frame.origin = CGPoint(x:myxpos,y:self.initY)
                }, completion:{(finished:Bool) in
            })
        }
       
        
        
        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: nil, animations: {
            self.nevermindbtn.frame.origin = CGPoint(x:110,y:568)
            }, completion: { (finished: Bool) in
        })
       
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionview.alpha = 0
        nevermindbtn.frame.origin = CGPoint(x:110,y:initY)
        
        btnList.append(writebtn)
        btnList.append(linkbtn)
        btnList.append(photobtn)
        btnList.append(quotebtn)
        btnList.append(helpbtn)
        btnList.append(gifbtn)
        
        for btn in btnList {
            var indexof = find(btnList,btn)!
            
            if Int(indexof) <= 2 {
                btn.frame.origin = CGPoint(x:xposarray[indexof],y:initY)
            } else {
                btn.frame.origin = CGPoint(x:xposarray[indexof-3],y:initY)
            }
        }
    }

}