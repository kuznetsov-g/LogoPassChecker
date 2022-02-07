//
//  File.swift
//  LogoPassChecker
//
//  Created by Георгий Кузнецов on 28.01.2022.
//

import Foundation

struct Users {
    let login: Login
    let infoAbout: InfoAbout
    let hobbies: [Hobbies]
    
    static func getInfo() -> Users {
        
            Users(login: Login(login: "11"
                               , password: "22"
                               , name: "my friend")
                  , infoAbout: InfoAbout(picture: "first", story: """
Hi, I'm George. I'm 29 and I love programming.
I have been working as a programmer for a little over two years, however, programming itself has attracted me since my youth.
When I was about 13 years old I had a whole bunch of Nokia smartphones with Symbian OS and in almost every application I saw missing improvements. And then I dreamed that I would become a programmer and write applications for mobile devices.
And this, my friend, is the application that is now in your hands - one of my first applications.
""")
                  , hobbies:[Hobbies(title: "Bicycle", story: """
                                                              I love cycling in the summer. For the last few years I have been riding a road bike.
                                                              My biggest trip was 120 km, I completed it in 5 hours, except for a half-hour break for a snack.
                                                              """)
                             ,Hobbies(title: "Coding", story: """
                                                              It just so happens that my hobby coincides with my work. I love coding and discovering new code constructs, sometimes it allows me to think differently, come up with new solutions and implement them - my favorite part of programming.
                                                              """)
                             ,Hobbies(title: "Books", story: """
                                                             I really like to read books, it gives me the opportunity to get away from everyday life, plunging into the world described by the author.
                                                             I am currently rereading Harry Potter.
                                                             """)
                             ,Hobbies(title: "Travellings", story: """
                                                                   I love travel. I love discovering new cities, penetrating and becoming a part of the city and life, where I have not been before.
                                                                   """)
                                                    
                  ])
    }
}

struct Login {
    let login: String
    let password: String
    let name: String
}

struct InfoAbout {
    let picture: String
    let story: String
}

struct Hobbies {
    let title: String
    let story: String
}
