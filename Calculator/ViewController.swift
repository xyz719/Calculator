//
//  ViewController.swift
//  Calculator
//
//  Created by 20131105808 on 16/3/28.
//  Copyright © 2016年 20131105808. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag:Int=0;
    var num1:Double=0;
    var num2:Double=0;
    var Equal:Double=0;
    var judgepoint:Bool=false;
    

    @IBOutlet weak var screen: UITextField!
    
    @IBAction func zero(sender: UIButton) {
        if(screen.text=="0")
        {
            screen.text=screen.text!+"";
        }
        else
        {
            screen.text=screen.text!+"0";
        }

        
    }
    
    @IBAction func one(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"1"
            
        }
        else
        {
            screen.text=screen.text!+"1";
        }
        
    }
    
    @IBAction func two(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"2"
            
        }
        else
        {
            screen.text=screen.text!+"2";
        }
    }
    
    @IBAction func three(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"3"
            
        }
        else
        {
            screen.text=screen.text!+"3";
        }
        
    }
    
    @IBAction func four(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"4"
            
        }
        else
        {
            screen.text=screen.text!+"4";
        }
        
    }
    
    @IBAction func five(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"5"
            
        }
        else
        {
            screen.text=screen.text!+"5";
        }
        
        
    }
    
    @IBAction func six(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"6"
            
        }
        else
        {
            screen.text=screen.text!+"6";
        }
        
        
    }
    
    @IBAction func seven(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"7"
            
        }
        else
        {
            screen.text=screen.text!+"7";
        }
        
        
    }
    
    @IBAction func eight(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"8"
            
        }
        else
        {
            screen.text=screen.text!+"8";
        }
        
        
    }
    
    @IBAction func nine(sender: UIButton) {
        if( screen.text=="0")
        {
            screen.text=""
            screen.text=screen.text!+"9"
            
        }
        else
        {
            screen.text=screen.text!+"9";
        }
        
        
    }
    
    @IBAction func point(sender: UIButton) {
        if(judgepoint==false)
        {
            screen.text=screen.text!+".";
            judgepoint=true
        }
    }
    
    @IBAction func add(sender: UIButton) {
        num1=(screen.text! as NSString).doubleValue;
        screen.text="";
        flag=1;
        judgepoint=false;
    }
    
    @IBAction func reduce(sender: UIButton) {
        num1=(screen.text! as NSString).doubleValue;
        screen.text="";
        flag=2;
        judgepoint=false;
    }
    
    @IBAction func ride(sender: UIButton) {
        num1=(screen.text! as NSString).doubleValue;
        screen.text="";
        flag=3;
        judgepoint=false;
    }
    
    @IBAction func divide(sender: UIButton) {
        num1=(screen.text! as NSString).doubleValue;
        screen.text="";
        flag=4;
        judgepoint=false;
    }
    
    @IBAction func percent(sender: UIButton) {
        var per:Double=0;
        var per1:Double=0;
        var per2:Int=0;
        per=(screen.text! as NSString).doubleValue;
        per1=per/100;
        if(per1%1==0)
        {
            per2=Int(per1);
            screen.text="\(per2)";
        }
        else
        {
            screen.text="\(per1)";
            
        }
    }
    

    @IBAction func minus(sender: UIButton) {
        var num3:Double=0;
        var num4:Int=0;
        num3=(screen.text! as NSString).doubleValue;
        if(num3%1==0)
        {
            num4=Int(num3);
            if(num3>0)
            {
                screen.text="-"+"\(num4)";
            }
            else
            {
                num4=abs(num4);
                screen.text="\(num4)";
            }
        }
        else
        {
            if(num3>0)
            {
                screen.text="-"+"\(num3)";
            }
            else
            {
                num3=abs(num3);
                screen.text="\(num3)";
            }
        }
    }
    
    @IBAction func pingfang(sender: UIButton) {
        var square:Double=0;
        var square1:Int=0;
        var square2:Double=0;
        square=(screen.text! as NSString).doubleValue;
        square2=square*square;
        if(square2%1==0)
        {
            square1=Int(square2);
            screen.text="\(square1)";
        }
        else
        {
            screen.text="\(square2)";
        }
        
    }
    
    @IBAction func delet(sender: UIButton) {
        screen.text="0";
        num1=0;
        num2=0;
        Equal=0;
        judgepoint=false
    }
    
    @IBAction func result(sender: UIButton) {
        var x:Int=0;
        num2=(screen.text! as NSString).doubleValue;
        switch(flag)
        {
        case 1:
            
            Equal=num1+num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                screen.text="\(x)"
            }
            else
            {
                screen.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 2:
            
            Equal=num1-num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                screen.text="\(x)"
            }
            else
            {
                screen.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 3:
            
            Equal=num1*num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                screen.text="\(x)"
            }
            else
            {
                screen.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 4:
            if(num2==0)
            {
                screen.text="错误"
            }
            else
            {
                Equal=num1/num2;
                if(Equal%1==0)
                {
                    x=Int(Equal);
                    screen.text="\(x)"
                }
                else
                {
                    screen.text="\(Equal)"
                }
            }
            judgepoint=true;
            break;
        default:
            break;
            
        }

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

