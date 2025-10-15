//
//  Quiz.swift
//  Quiz
//
//  Created by Camden Bowler on 10/8/25.
//

struct Quiz {
        
    let quotes = [
        "music man": "You and I will be making music together for a long, long time.",
        "foxy": "Yarrg, I came for ye booty, that be treasure ya' know...",
        "deedee": "Uh oh, how unfortunate Uh oh, how unfortunate I know how much you like to fight So I'll add a new problem to your night.",
        "scraptrap": "I always come back!",
        "funtime foxy": "SHOWTIMES ARE ON THE HOUR, NOT A MOMENT BEFORE AND NOT A MINUTE LATER!",
        "mr.hippo": "My friend, you have met a terrible, terrible demise. But, uh, you know, I-I don't feel too bad about it. After all, if- if it weren't from me, it would have just been from someone else, ya know? I guess what I'm trying to say is life, life goes on. W- well, from- for everyone else, life goes on. Not- not for you, you're, you're dead. But that's neither here, nor there. It reminds me of one summer day in the park, I was having just a delightful picnic with my good friend Orville. And I said to him, I said, Orville, I-I have a story. And he said to me, What’s the significance of the story? I said to him Orville, not every story has to have significance, ya know? Sometimes uhh, you know, sometimes a story is just a story. You try to read into every little thing and find meaning in everything anyone says, you'll just drive yourself crazy. Had a friend do it once - wasn't pretty - we talked about it for years. And- and not only that, but, you'll likely end up believin' something you shouldn't believe or thinkin' something you shouldn't think o-o-or assumin' something you shouldn't assume, ya know? Sometimes, I said, a-a-a story is- is just a story, so just be quiet for one second of your life and eat your sandwich, okay? Of course, it was only then I realized I made sandwiches and, poor Orville was having such difficulty eating it! Elephants have those clumsy hands, ya know? A-Actually, I-I suppose that's the problem; they don't have hands at all, do they? They've, they're all feet! A-an I-I couldn't imagine someone asking me to eat a sandwich with my feet. Now, if I recall correctly there was a bakery nearby. I- I said to him Orville, l-let me go get you some rye bread. Now, I-I'm unsure if elephants enjoy rye bread, but I assure you that Orville does. Now this was on a Tuesday which was good because rye bread was always fresh on Tuesday. They made sourdough on Monday and threw it out Wednesday. O-or rather they sold it at a discount for people wantin' to feed the ducks and then, probably at the end of the day finally they threw it all out, I-I don't recall. I do remember a man who would being his son to the bakery every Wednesday, and-and go feed the ducks. He would buy all of the sourdough bread. Of course, you know, you're not supposed to feed the ducks sourdough bread at all. It swells up in their stomach and then they all die. At, ah, at least, at least that's what I've heard. Ya know, I never saw any ducks die myself, but I did notice a substantial decrease in duck population over the course of a few years. I just never thought to stop the man and tell him he was killing the ducks by feeding them sourdough bread! And if you want my opinion on the matter, heh, and I told Orville this as well: if you wanna feed ducks or birds or any kind for that matter, especially buy seed. I mean, when you think about it, breads of any sort don't occur in nature. They don't grow on trees or spring up from the bushes! I don't think birds know what to do with bread. What was I saying? Oh, oh yes yes. So I bought Orville some rye bread. What a fine day it was.",
        "rockstar freddy": "Please deposit five coins.",
        "puppet": "The others are like animals, but I am very aware.",
    ]
    
    private(set) var score = 0
    private(set) var total = 0
    private(set) var question: String
    
    private let animatronics = ["music man","foxy","deedee","scraptrap","funtime foxy","mr.hippo","rockstar freddy","puppet"]
    
    init() {
        question = animatronics.randomElement()!
    }
    
    mutating func next() {
        // how culd we prevent repeats
        question = animatronics.randomElement()!
        
        //how could we handle runing out of questions
    }
    
    mutating func isValid(_ input: String) -> Bool{
        let isCorect = question == input.lowercased()
        if isCorect {score += 1}
        
            total += 1
        
        return isCorect
    }
}
