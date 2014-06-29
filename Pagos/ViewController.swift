//
//  ViewController.swift
//  Pagos
//
//  Created by Santiago Zavala de la Vega on 6/24/14.
//  Copyright (c) 2014 Dfectuoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField;
    @IBOutlet var numberField: UITextField;
    @IBOutlet var expMonthField: UITextField;
    @IBOutlet var expYearField: UITextField;
    @IBOutlet var ccField: UITextField;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func simplePayment(sender : AnyObject) {
        var conekta = Conekta();

        var payment = Payment();
        
        payment.name = nameField.text;
        payment.number = numberField.text;
        payment.expMonth = expMonthField.text;
        payment.expYear = expYearField.text;
        payment.cc = ccField.text;
        
        conekta.setApiKey("DSADSA");
        
        conekta.charge(payment, withSuccess: { () -> Void in
                print("dsadsa");
            }, andFailure: { () -> Void in
                print("faaail");
            });
    }

}
