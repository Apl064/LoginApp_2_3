//
//  Persona.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/13/22.
//

struct User {
    let login: String
    let password: String
    let persona: Person
    
    static func createUser() -> User {
        User(login: "tim", password: "zaraza", persona: Person.createPerson())
    }
}

struct Person {
    let firstName: String
    let secondName: String
    let aboutUser: String
    let userPhoto: String
    
    static func createPerson() -> Person {
        Person(firstName: "Pavel",
               secondName: "Metelin",
               aboutUser: """
Родился, живу и работаю в Москве. Окончил МАИ. Программирование начинал с Delphi, Clarion, C++ Builder. После чего ушел из программирования на руководящие должности. Ради увлечения начал изучать Objective-C. С 2010 по 2017 написал 3 приложения для AppStore и получилось даже заработать денег))) После забросил свои приложения и начал писать ПО для компаний, всего на заказ написал 4 приложения. С 2017 года полностью углубился в ПМ и MSSQL. На данный момент решил восстановить знания и память и попробовать опять уйти в программирование, потому что чуствую что проектная работа меня деградирует). Хоби, мотоцикл.
""",
                    userPhoto: "photo.png")
    }
}

