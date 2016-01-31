//
//  APIs.swift
//  BBApiSwift
//
//  Created by Zhenbang Xiao on 30/01/2016.
//  Copyright © 2016 Zhenbang Xiao. All rights reserved.
//

import Foundation
import Alamofire

let companyHeaders = ["Accept": "application/json", "Ocp-Apim-Subscription-Key": "50e7d7a365ab44438978173d13fe9300", "bearer": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY"]

let charityHeaders = ["Accept": "application/json", "Ocp-Apim-Subscription-Key": "a307fb61ed9549138a160f4af0642a46", "bearer": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2ZjMTI5N2E2MDEwNjA5YjQyZmFjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6ImEzMDdmYjYxZWQ5NTQ5MTM4YTE2MGY0YWYwNjQyYTQ2IiwiaWF0IjoxNDU0MTg0MTgwfQ.g5Mfb981yu7KjudLyi-iCc4xqBDcbKiBLeBnSKt3G_s"]

let companyID = "56acd5a967b5a45c08e2d37c"
let charityID = "56acfc1297a6010609b42fac"


func requestCompanyInfo() {
        Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/customers/", headers: companyHeaders)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            if let JSON = response.result.value {
                print("Company info: \(JSON)")
            }
    }
}

func requestCharityInfo() {
    Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/customers/", headers: charityHeaders)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            if let JSON = response.result.value {
                print("Charity info: \(JSON)")
            }
    }
}

func requestCompanyAccounts() {
    Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/customers/\(companyID)/accounts", headers: companyHeaders)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            if let JSON = response.result.value {
                print("Company accounts: \(JSON)")
            }
    }
}

func requestCharityAccounts() {
    Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/customers/\(charityID)/accounts", headers: charityHeaders)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            if let JSON = response.result.value {
                print("Charity accounts: \(JSON)")
            }
    }
}

func requestAccountInfo(accountID : String, headers : [String : String]) {
    Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/accounts/\(accountID)/", headers: headers)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("Account Info: \(JSON)")
            }
    }
}

func requestAccountInfoTest() {
    requestAccountInfo("56acd5a967b5a45c08e2d37d", headers: companyHeaders) // AccountID is required from func requestCompanyAccounts()
}

func makePayment(fromAccountID : String, toAccountNum : String, toSortCode : String, reference : String, paymentAmount: String, callBackURI : String, headersOfFrom: [String : String]) {
    let requestBody = ["toAccountNumber" : toAccountNum, "toSortCode" : toSortCode, "paymentReference" : reference, "paymentAmount" : paymentAmount, "callbackUri" : callBackURI]
    Alamofire.request(.POST, "https://bluebank.azure-api.net/api/v0.5.20/accounts/\(fromAccountID)/payments/", headers: headersOfFrom, parameters: requestBody, encoding: .JSON).responseJSON { response in
        if let JSON = response.result.value {
            print("Payment Result: \(JSON)")
        }
        //debugPrint(response)
    }
}

func makePaymentTest() {
    makePayment("56acd5a967b5a45c08e2d37d", toAccountNum: "50000038", toSortCode: "839999", reference: "From the Company", paymentAmount: "1", callBackURI: "https://company.com", headersOfFrom: companyHeaders)
}

func requestTransactions(accountID : String, headers : [String: String]) {
    Alamofire.request(.GET, "https://bluebank.azure-api.net/api/v0.5.20/accounts/\(accountID)/transactions/", headers: headers)
        .responseJSON { response in
            //print(response.request)  // original URL request
            //print(response.response) // URL response
            //print(response.data)     // server data
            //print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("Transaction History: \(JSON)")
            }
    }
}

func transactionTest() {
    requestTransactions("56acfc1297a6010609b42fae", headers: charityHeaders)
}

