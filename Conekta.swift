//
//  Conekta.swift
//  Pagos
//
//  Created by Santiago Zavala de la Vega on 6/24/14.
//  Copyright (c) 2014 Dfectuoso. All rights reserved.
//

import Foundation

class Conekta {
    var apiKey:String = "";
    
    func setApiKey(newApiKey: String){
        apiKey = newApiKey
    }

    func charge(payment: Payment, withSuccess success: ()-> Void, andFailure failure:()-> Void){
        println("Haciendo un cobro con:");
        println("Nombre:" + payment.name);
        println("Numero:" + payment.number);
        println("expMonth:" + payment.expMonth);
        println("expYear:" + payment.expYear);
        println("ccField:" + payment.cc);
        
        success()
        failure()
    }
    
    func getToken(){
        
    }

    func getClient(clientId:String){
        
    }

}