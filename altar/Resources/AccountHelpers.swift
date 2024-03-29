//
//  AccountHelpers.swift
//  altar
//
//  Created by Juan Moreno on 2/13/20.
//  Copyright © 2020 Juan Moreno. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import Alamofire
import AVFoundation

class AccountHelpers  {
    
    
    func isConnectedToInternet() ->Bool {
           return NetworkReachabilityManager()!.isReachable
       }
    
    
    func activeAplication () {

        let token = Messaging.messaging().fcmToken

        let usuario = Auth.auth().currentUser?.uid

     let postnoto1 = [usuario:token]

    // AGREGANDO POSIBLE NOTIFICACION

   //  Database.database().reference().child("ActiveAplication").updateChildValues(postnoto1)


     }


    func NoMoreActive () {

        let usuario = Auth.auth().currentUser?.uid
        let token = "0"
       let postnoto1 = [usuario:token]

    // AGREGANDO POSIBLE NOTIFICACION

        Database.database().reference().child("ActiveAplication").updateChildValues(postnoto1)


     }

    func nuevomensaje (controller: UIViewController) {



                                           DispatchQueue.main.async {

                                               UIApplication.shared.applicationIconBadgeNumber = advengers.shared.mensajesTotales
                                              // controller.tabBarController?.tabBar.items![3].badgeValue = String(advengers.shared.mensajesTotales)
                                               controller.tabBarController?.tabBar.items![3].badgeValue = ""
                                               controller.tabBarController?.reloadInputViews()
                                            self.playSoundMessage()
                                           }



    }

    
    
    func loadFirstContent (uidUsers: String, uidChurch: String) {
        
        
        
        
        let devocional = [
            "author": "uC3jMeO6QxgK8oEh5X82IMeIesC3",
            "church" : uidChurch,
            "creationDate" : Date().millisecondsSince1970,
            "devoUID": "71231A30-E786-413E-8127-D743FE1FBF2B",
            "message": "The God we serve is a God of unity who desires that His church live in unity and harmony built on the foundation that is Jesus Christ. It is Jesus who draws us together and the power of the Holy Spirit that make our bond stronger.\nChurches today have a lot of values. Some churches value doctrine, political correctness, events, programmes, social responsibility or discipleship. And it's not that these things are not important, but God declares that in His kingdom, nothing is as important as being united in love.\n\nGod calls the church to be a vibrant and powerful one that bears much fruit and the way we do that is by working together in perfect unity, not in perfect doctrine, perfect systems, perfect worship services or perfect leadership. That's why we are likened to a body - because what gets things done is unity in diversity. 1 Corinthians 12:12 says, \"For just as the body is one and has many members, and all the members of the body, though many, are one body, so it is with Christ.\"\n\nGod stands and affirms the power of unity in getting things done. In Genesis 11:6 the Lord spoke of the power of the people of Babel saying, \"Behold, they are one people, and they have all one language, and this is only the beginning of what they will do. And nothing that they propose to do will now be impossible for them.\"\n\nThese people were united for the wrong reasons, and yet God acknowledged what ability they had. Imagine what we can do if we are united for the right reasons. That's why the first thing that God did upon the establishment of the early church was give people a united language. In Acts 2:8-11, the Holy Spirit empowered the believers to once again speak the same language:\n\n\"And how is it that we hear, each of us in his own native language? Parthians and Medes and Elamites and residents of Mesopotamia, Judea and Cappadocia, Pontus and Asia, Phrygia and Pamphylia, Egypt and the parts of Libya belonging to Cyrene, and visitors from Rome, both Jews and proselytes, Cretans and Arabians—we hear them telling in our own tongues the mighty works of God.\"\nUnity is vital to building strong and vibrant churches. Today, the body of Christ is plagued by church splits and denomination splits all in the name of truth. But is the truth something that is to bring division within the body of believers? I believe that the truth, once centralised on the person of Jesus Christ, will bring unity and not division. The truth of God's Word should bring oneness and not categorisation amongst us.\n\nThe enemy we fight finds no initimidation in a church that is fighting with one another. What threatens Satan is a force built on one foundation and brought closer together by the love of God. That's why God calls us to love one another over and over again in scripture. He values unity and He values relationships built within the parameters of His church.\n\nGod is looking to build a church where everyone values relational unity, and the way we achieve that unity is by being united under one banner. There is no other banner that must be lifted high in God's house than the banner of Jesus' name. There is power in being brought together in Jesus' name, and when we are united in Jesus, nothing that we propose to do will be impossible for us.",
            "photoURL" :"https://firebasestorage.googleapis.com/v0/b/altar-92d12.appspot.com/o/backgroundsDevSR%2F-M-qdkd9WWOHCrEXBWLJ?alt=media&token=10af4f8f-7403-4060-a57c-4a2838e85e77",
            "title":"Power of Unity",
            "urltexto":"https://firebasestorage.googleapis.com/v0/b/altar-92d12.appspot.com/o/Devotionals%2FC18CF123-6F7A-406D-B62D-5F780CFEFFA8%2F9FB5B46C-F129-49DE-AC6D-AC615BB0E7F7?alt=media&token=dd4c3e75-b611-4792-a1f6-b9dcf01b24d7"

            ] as [String:Any]
        
        let post = [
            
            "author" : "Juan Moreno",
            "creationDate" : Date().millisecondsSince1970,
            "imagH:":1140,
            "imagW:":1152,
            "message":"May the Lord answer you in the day of trouble;\nMay the name of the God of Jacob defend you;\nMay He send you help from the sanctuary,\nAnd strengthen you out of Zion;\nMay He remember all your offerings,\nAnd accept your burnt sacrifice. Selah\n\nMay He grant you according to your heart’s desire,\nAnd fulfill all your purpose.\n\nPsalm 20: 1-4",
            "postID":"-M2-nV91IP0Qz1hlo9Rk",
            "postType":"imageOnly",
        "pathtoPost":"https://firebasestorage.googleapis.com/v0/b/altar-92d12.appspot.com/o/post_pray_feed%2FuC3jMeO6QxgK8oEh5X82IMeIesC3%2F-M2-nV91IP0Qz1hlo9Rk.jpg?alt=media&token=15be18c5-e89c-4773-9557-ad0a0ea47fd8",
            "prays":0,
            "userPhoto": "https://firebasestorage.googleapis.com/v0/b/altar-92d12.appspot.com/o/users%2Fpicture%2FuC3jMeO6QxgK8oEh5X82IMeIesC3?alt=media&token=ade3a0eb-9497-4d89-8d21-f16f1c30b1c7",
            "userid":"uC3jMeO6QxgK8oEh5X82IMeIesC3"
            
            ] as [String : Any]
        
        advengers.shared.postPrayFeed.child(uidChurch).child("-M2-nV91IP0Qz1hlo9Rk").updateChildValues(post)
        
        Database.database().reference().child("Devotionals").child(uidChurch).child("71231A30-E786-413E-8127-D743FE1FBF2B").updateChildValues(devocional)
        
        
    }
    

          var bombSoundEffect: AVAudioPlayer?
      func playSoundMessage () {


          let urlPath = Bundle.main.url(forResource: "textmessage", withExtension: "mp3")
    //  let path = Bundle.main.path(forResource: "textmessage.mp3", ofType:nil)!
          if let url = urlPath {

                 do {
                     bombSoundEffect = try AVAudioPlayer(contentsOf: url)
                     bombSoundEffect!.play()
                     print("Playinggg!")
                 } catch {

                     print("NotPlaying")
                     // couldn't load file :(
                 }
          }


      }


    var container: UIView = {
        
        let a = UIView ()
        
        a.backgroundColor = .darkGray
        a.alpha = 0.3
        
        return a
        
    } ()
    
     let actInd = UIActivityIndicatorView()
    
    

    
    func loadCurrentUserInfo (completionHandler: @escaping (_ success:Bool) -> Void)  {
                 
        
                 advengers.shared.usersStatusRef.queryOrderedByKey().observe(.value) { (datasnap) in
                  
                   
                    if let userinfo = datasnap.value as? [String:NSDictionary] {
                     
                     for (key, value) in userinfo {
                         
                         if key == Auth.auth().currentUser?.uid {
                            advengers.shared.currenUSer["userid"] = value["userid"] as? String
                            advengers.shared.currenUSer["email"] = value["email"] as? String
                            advengers.shared.currenUSer["name"] = value["name"] as? String
                            advengers.shared.currenUSer["photoURL"] = value["photoURL"] as? String
                            advengers.shared.currenUSer["church"] = value["church"] as? String
                            advengers.shared.currenUSer["fcmToken"] = value["fcmToken"] as? [String]
                            advengers.shared.currenUSer["churchID"] = value["churchID"] as? String
                           //
                            advengers.shared.currenUSer["inbox"] = value["inbox"] as? [String:Int]
                            
                               advengers.shared.currenUSer["title"] = value["title"] as? String
                            
                              advengers.shared.currenUSer["isPastor"] = value["isPastor"] as? Int
                            
                            advengers.shared.currenUSer["uid"] = value["uid"] as? String
                        
                             advengers.shared.currentChurch = value["church"] as! String
                            
                            completionHandler(true)
                            
                         } else {
                            
                            completionHandler(false)
                        }
                     }
                    } else {
                        
                        completionHandler(false)
                    }
                 }
        
                 
                 
             }
    
    
    func fetchUserPicURL(userID: String, completionHandler: @escaping (_ success:String) -> Void) -> Bool {

            var photoURL = ""
            // observeSingleEvent una marenra fancy de decir leer datos
            
            advengers.shared.usersStatusRef.child(userID).observeSingleEvent(of: .value, with: { (snapshot) in
                print(snapshot.value ?? "")

                guard let dictionary = snapshot.value as? [String: Any] else { return }

                 photoURL = dictionary["photoURL"] as? String ?? ""

                print("********************** Esto es el URL nuevo ")
                print(photoURL)
                completionHandler(photoURL)
            //    self.navigationItem.title = username
                
            }) { (err) in
                print("Failed to fetch user:", err)
            }

          return true
        }
    
    func loadCurrentChurch (codigo: String,completionHandler: @escaping (_ success:Bool) -> Void) {
           
           //  let referenciaDB = Database.database()
           
           // .observeSingleEvent(of: .value, with: { (snapshot) in
       
           let userPostRef = Database.database().reference().child("Churchs").child(codigo)
           //let userPostRef = Database.database().reference().child("Media_Channels")
           userPostRef.observeSingleEvent(of: .value, with: { (data) in
               
            
               if let devoFeed = data.value as? [String:Any] {
                   
                   
                   advengers.shared.currentChurchInfo = Church(dictionary: devoFeed)
                   
                 
                   completionHandler(true)
                   
                   
               }
               
               
           }, withCancel: { (err) in
               print("Failed to fetch like info for post:", err)
                completionHandler(false)
           })
           
           
       }
  
    
    func addUserToChuch (churchUID: String, completionHandler: @escaping (_ success:Bool) -> Void) {
        
        let userPostRef = Database.database().reference().child("ChurchsFollowers").child(churchUID)
        guard let fcmToken = Messaging.messaging().fcmToken else { return }
          var stringdeToken = [String] ()
        stringdeToken.append(fcmToken)
        
        let diction = [Auth.auth().currentUser?.uid : stringdeToken]
        
        userPostRef.updateChildValues(diction as! [String : Any]) { (err, ref) in
                                             if let err = err {
                                                 //self.navigationItem.rightBarButtonItem?.isEnabled = true
                                                 print("Failed to save Follower to DB", err)
                                               completionHandler(false)
                                                 return
                                             }
                                             
                                             print("Successfully saved Follower to DB")
                   
                                            
                   
                                           completionHandler(true)
                                             
                                         }
               
    }
    
    
                   
    func creatChurch (userID: String, name: String, address: String?, state: String, country: String, zipCode: String?,email: String?,facebook: String?,instragram: String?, webSite: String?, phoneNumber: String?, displayname: String, completionHandler: @escaping (_ success:Bool) -> Void) {
        
        let userPostRef = Database.database().reference().child("Churchs")
        
        let uuid = UUID().uuidString
        guard let fcmToken = Messaging.messaging().fcmToken else { return }
        var stringdeToken = [String] ()
                             stringdeToken.append(fcmToken)
        let diction = ["userID" : userID,
                   "name" : name,
                   "address" : address,
                   "country" : country,
                   "state": state,
                   "zipCode" : zipCode,
                   "email" : email,
                   "facebook" : facebook,
                   "instragram" : instragram,
                   "fcmToken" : stringdeToken,
                    "webSite" : webSite,
                   "phoneNumber" : phoneNumber,
                   "uidChurch" : uuid,
                   "displayname" : displayname
        
            ] as [String : Any]
        
        userPostRef.child(uuid).updateChildValues(diction as [String : Any]) { (err, ref) in
                                      if let err = err {
                                          //self.navigationItem.rightBarButtonItem?.isEnabled = true
                                          print("Failed to save post to DB", err)
                                        completionHandler(false)
                                          return
                                      }
                                      
                                      print("Successfully saved new Church to DB")
            
                                        advengers.shared.currentChurch = displayname
                                        advengers.shared.currentChurchInfo = Church(dictionary: diction)
                                     
            
                                    completionHandler(true)
                                      
                                  }
        
        
        
    }
    
    
    func editChurch (churchUID: String, userID: String, name: String, address: String?, state: String, country: String, zipCode: String?,email: String?,facebook: String?,instragram: String?, webSite: String?, phoneNumber: String?, displayname: String, completionHandler: @escaping (_ success:Bool) -> Void) {
           
           let userPostRef = Database.database().reference().child("Churchs")
           
           let uuid = churchUID
           guard let fcmToken = Messaging.messaging().fcmToken else { return }
           var stringdeToken = [String] ()
                                stringdeToken.append(fcmToken)
           let diction = ["userID" : userID,
                      "name" : name,
                      "address" : address,
                      "country" : country,
                      "state": state,
                      "zipCode" : zipCode,
                      "email" : email,
                      "facebook" : facebook,
                      "instragram" : instragram,
                      "fcmToken" : stringdeToken,
                       "webSite" : webSite,
                      "phoneNumber" : phoneNumber,
                      "uidChurch" : uuid,
                      "displayname" : displayname
           
               ] as [String : Any]
           
           userPostRef.child(uuid).updateChildValues(diction as [String : Any]) { (err, ref) in
                                         if let err = err {
                                             //self.navigationItem.rightBarButtonItem?.isEnabled = true
                                             print("Failed to save post to DB", err)
                                           completionHandler(false)
                                             return
                                         }
                                         
                                         print("Successfully saved new Church to DB")
               
                                           advengers.shared.currentChurch = displayname
                                           advengers.shared.currentChurchInfo = Church(dictionary: diction)
                                        
               
                                       completionHandler(true)
                                         
                                     }
           
           
           
       }
       
    
    func loadCurrentChurch () {
        
        
    }
    
    
    func loadChurchs ( completionHandler: @escaping (_ success:Bool,_ churchsLista: [NSDictionary]) -> Void) {
        
        Database.database().reference().child("Churchs").queryOrderedByKey().observe(.value) { (datasnap) in
             
            guard let churchdata = datasnap.value as? [String:NSDictionary] else {return}
            
            
            var churchsLista = [NSDictionary] ()
            
            for (_,value) in churchdata {
                
                churchsLista.append(value)
                
                print(value as? [String:String] as Any)
                
                 completionHandler(true, churchsLista)
                
            }
            
             

         
        
        
    }
       
        
    
}
    
    
    
}
