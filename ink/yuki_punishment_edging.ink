VAR obedience = 0

=== YukiPunishmentEdging ===

/scene ?
/character yuki

/perform bounces

Oh, you're here! I'm so excited you've decided to visit me. You're such a good {player_name}.

/perform serious

Wait, you're here for a punishment?! You haven't been a good {player_name} at all!

- (forget)

I explained to you the rules didn't I? 

+ [Yes]
~ obedience = obedience + 1
/perform confused 

Somebody isn't a very good slave then.
+ [No]
~ obedience = obedience - 1
/perform annoyed

Now that's just not true, and you know it. Lying counts as being disobedient too. That'll earn you <I>another</I> punishment mark.

+ [timeout] 
Heeeey, anyone home?
I asked you a question.
-> forget

+ [distracted]
-> PayAttention -> forget

- /perform pleased

Well, at least you came to me.

/perform lean_forward

But don't think that means I'll be too easy on you!

Now be a good {player_name}

/perform point_down

and come here.

Spread your legs and put your hands behind your back.
//cycle plays while the game waits for the player to get into the pose*
{cycle:
    - Come here {player_name}, and present yourself.
    - This is no time for silly games. Show yourself to me.
    - Do you need to clean your ears? Get into position already!
}

// Put Player Pose check here, work on later

/perform circle_player
Don't move! I'm thinking about what to do with you.

/perform inspect_genitals

Hm, we're going to need to get you <I>really</I> 
{player_name == "boy": 
<> hard
- else: 
<> wet
}
<> first.

// The confusing block below is a semi-randomized tease for the player.


-> tease_bank1

// This is the first Tease Bank. It's a randomized combination of 7 poses and 6 phrases. Once 6 different combinations have been created, it jumps to the first edging break. Ignore "bank3_loop" at the end for now.

- (tease_bank1)

// Need teasing poses to insert

{~ /perform tease1| /perform tease2| /perform tease3| /perform tease4| /perform tease5| /perform tease6| /perform tease 7}
{~ Mmm, heehee.| I can tell how much you like this!| This punishment is just what you need!|Like what you see?|What do you like the most? Trick question, silly!| Aw. I'm just too much Mistress for you to handle.| Don't you enjoy yourself too much!}
{TouchQ: -> bank3_loop}
{EnjoymentQ: -> teaseloop2}

{! -> tease_bank1| -> tease_bank1|}
- (EnjoymentQ)
Are you enjoying your punishment, little slave?

+[Yes]
~ obedience = obedience + 1
You're not supposed to enjoy it that much! Buuuut, you always know where to find me when you want more!
->teaseloop2

+[No]
~ obedience = obedience - 1
Well maybe next time you shouldn't be such a naughty little slave. 
->teaseloop2

+[timeout]
Hey, I know you're enjoying the show, but answer me! 
-> EnjoymentQ

+[distracted]
-> PayAttention -> EnjoymentQ
- (teaseloop2)

{! -> tease_bank1| -> tease_bank1| -> tease_bank1}
// Above is the sequence loop that sends the game back through the Tease Bank to generate another combination.

- (edgebreak1)

// This is the first edging break. Here Yuki will transition to a different set of phrases, but allow the player to touch themselves.

/perform amused

Mmm, oh goodie, your {player_name == "boy":
<> cock is nice and hard.
- else:
pussy is nice and wet.
}

/perform bored

But I don't think that's enough. Your cum isn't as pent up as I want. We're gonna need to have some more fun!

/perform serious 

Now this time, I'll let you touch yourself. Don't get too excited, there's a catch! You aren't allowed to cum, no matter how badly you want to!

- (tease_bank2)

// This is the second Tease Bank. It functions identically as the first, except with different lines. Same poses. Again, ignore "bank3_loop". After 6 combinations, it jumps to edgebreak2.
{~ /perform tease1| /perform tease2| /perform tease3| /perform tease4| /perform tease5| /perform tease6| /perform tease7}

{~ You should see your face {player_name}, you can't keep your eyes off me!| You better keep rubbing that {player_name == "boy":
<> cock
- else:
<> pussy
} <> silly {player_name}.| Maybe if you had been a good {player_name}, you could have massaged me instead.| Bad {player_name}s only get to watch.| Next time, follow the rules more closely and we can have even more fun!| You better not be disobedient anymore, no matter how much this turns you on! | Why did you have to be a naughty little slave and break the rules?}

{FeelGoodQ: -> teaseloop3}

{! -> tease_bank2| -> tease_bank2| -> tease_bank2}
- (FeelGoodQ)
Am I making you feel good, you naughty {player_name}?
+[Yes]
~ obedience = obedience + 1
Heeheehee, I know, I can see it in your eyes! 
-> teaseloop3
+[No]
~ obedience = obedience - 1
Then next time you better behave yourself for me and the other Mistresses! 
-> teaseloop3
+[timeout]
I think I know the answer, but do tell. ->FeelGoodQ
+[disracted]
-> PayAttention -> FeelGoodQ

- (teaseloop3)
{!-> tease_bank2| -> tease_bank2| -> tease_bank2| -> edgebreak2|->bank3_loop}

- (edgebreak2)

// This is where Yuki checks to see if you've had enough teasing. If the player answers yes, Yuki moves on to the foot masturbation. If the player answers no, the game jumps to bank3_loop

{bank3_loop: -> BCumQ}
/perform cock_head_to_left

I bet you've had enough of my teasing. 
-(TouchQ) Do you want me to touch your {player_name == "boy":
<> cock
- else:
<> cunt
}
<> now?

+ [Yes]
    
    -> foot_tease

+ [No]

    Oh good, I love showing off my body! I don't get to do it enough. I work hard for it too! 
    And you still can't cum!
    -> bank3_loop

+ [timeout]
    Hey! Yoohoo! I'm talking to <I>you</I>! ->TouchQ

+ [distracted]
-> PayAttention -> TouchQ

-(bank3_loop)
{! -> tease_bank1| -> tease_bank2| -> tease_bank1| -> tease_bank1}

- (BCumQ)

Mmm, I want to know. 

- (CumQ1)

Are you going to cum for me, you naughty slut?

+[Yes]

I like to hear that. But you better not, we're not done yet! 


+[No]
Don't worry, I have other plans for you! 

+[timeout]
Someone's paying a little too much attention. ->CumQ1

+[distracted]
-> PayAttention -> CumQ1

- /perform thoughtful

I want to play with you myself now! Lie down and put your hands over your head. 

->foot_tease

// This is a combination of Tease Banks 1 and 2 to minimize VO but still have some variety. Each original Test Banks' combination loop is instructed to return to bank3_loop after each combination, so it avoids talking to Yuki again.

- (foot_tease)

// The tease loop is now over.

// Put Player Pose check here, work on later

/perform raised_foot_over_genitals

//Yuki needs to be standing over the player, with her foot hovering over their genitals

All the slaves like my feet. 
- (FootQ) 
Do you want me to tease you with them?

+ [Yes]
~ obedience = obedience + 1

    Good job for knowing your place! 
    ->LongFoot
    
+ [No]
~ obedience = obedience - 1

    Then this is exactly what you deserve for misbehaving in the mansion! 
    ->ShortFoot

+ [timeout]

    Hey, my balance isn't the greatest okay, so give me an answer please. 
    -> FootQ

+ [distracted]
-> PayAttention -> FootQ

- (LongFoot)

/perform gentle_foot_genital_caress

// Yuki slowly rubs her foot over the player's genitals

Mmmm.

Don't my feet feel good?

I take extra good care of them. I like making the good slaves give me pedicures, so that I can edge the naughty slaves like you even better.

I'm very proud of the idea. I came up with it all on my own. 

-(EfficientQ) 
Isn't that so smart of me?

+[Yes]
~ obedience = obedience + 1
I know, I'm such a clever Mistress!

+[No]
~ obedience = obedience - 1
Well okay smarty-pants, that's not very polite of you.
+[timeout]
Hey, I asked you a question!
-> EfficientQ

+[distracted]
-> PayAttention -> EfficientQ

-{obedience >= 5:
I don't know how you got a punishment marker. You've been a very good {player_name} this entire session.

The other mistresses must intimidate you pretty bad, huh?

I understand. Even though I am one, I know I'm not like them.

[Wait 3]

I'm not super strict like the Headmistress.

I don't have the same magnetism like Nega,

And I am definitely not anything like the Goddess.

But I try my best. I can see you are too! So we're kind of in this together, sort of, huh?

Well, anyways...
}

- Maybe if you decide to be a good {player_name} again, you can take care of my feet too!

If you're extra good, I'll even let you suck on my toes.

It's too bad I have to punish you instead, you little troublemaker!

But I bet you like my punishment. You like my punishments more than the other mistresses' punishments. 

- (ComeBackQ) You want to come back again, don't you? // Maybe a hint of desperation in the VO?

+ [Yes]
~ obedience = obedience + 2

    Because I make you feel better, right? Even though I can't let you have an orgasm today, the journey there is fun! It's time for some double trouble now! 
    -> TwoFeet 

+ [No]
~ obedience = obedience - 2

    Mmph. That’s not very nice to say to the woman who’s pleasing you. Maybe you’ll change your mind after this... 
    
    -> TwoFeet // Sound genuinely offended? 

+ [timeout]

    Oooh, does my foot feel so good you can't answer me? Well at least try, heehee. 
    -> ComeBackQ

+ [distracted]
-> PayAttention -> ComeBackQ

- (TwoFeet)

/perform both_feet_masturbation // Sits in front of player, uses both feet to masturbate

I'm actually kind of jealous of you right now, because you get to enjoy these.

My feet get worn out so much from busting around this mansion. So I swore I would make them one of my best features. 

Oooh, the little slaves just love them.

I like to make sure they're soft, flexible, clean, and I practice my technique every day!

// Alternative pose here?
    
I've really worked hard to ensure that even if the other Mistresses are better than me, at least I have my sexy little soles.

Oh geez! I'm about to make you cum at this rate! You better tell me right before you do!

-> AboutToCum ->

Mmm, good {player_name}! Maybe there's hope for you yet!

And now the next part of my plan! Um...

-> edgebreak3

- (ShortFoot)

/perform gentle_foot_genital_caress // However, is it possible to simply double the speed at which this animation will eventually play? I want the shorter foot scene to be, well shorter, but more aggressive.

Awww, you poor {player_name}. I can tell you don't like that. Well, slaves don't always get what they want. That's why you're there, and I'm here.

This is why you can't break the rules!

If I want to tease you with my foot, then that's exactly what I'm going to do.

Buuuut, I guess if you <I>really</I> don't like it, I don't have to.

But come on, you can't tell me this doesn't feel good.
- (HateQ) Do you really hate this?

+ [Yes]

    Well fine, party pooper. We can try something else. 
    -> edgebreak3

+ [No]
    
    Mm, good answer! You really are a dirty {player_name}!
    -> TwoFeet
    
+ [timeout]

    Did I win you over or something? I don't know until you answer me. 
    ->HateQ

+ [distracted]
-> PayAttention -> HateQ

- (edgebreak3)

I liked the way you were staring at me earlier, so...Hmmm...OH! I know what we can do now!

/perform point_down

I want you to stare at my ass while you think about what you did to get here.

// Move Yuki to above player's face

/perform squat_above_face

Think about all the naughty things you did to end up here.

You should feel bad about breaking the rules.

-(BadQ) You feel bad of course, don't you {player_name}?

+[Yes]
~ obedience = obedience + 1
You better mean that, and not be lying to me like a bad {player_name}!

+[No]
~ obedience = obedience - 1
<I>Somebody's</I> enjoying themselves a little too much.

+[timeout]
Get your head out of my ass and listen up!
-> BadQ
+[distracted]
-> PayAttention -> BadQ

- I think we need to edge you a wee bit more.

/perform squat_above_face_sway

Start {player_name == "boy":
<> stroking your cock
-else:
<> rubbing your pussy
}
<> for me. And the same rules still apply!

You are not allowed to cum!

I want you to really get close this time, like walking a <I>really</I> long, thin tightrope.

But at the end of that tightrope, there's nothing! Surprise!

But you have to walk it anyways, because I said so!

Make sure you tell me right before you cum.

-> AboutToCum ->

If you can follow directions so well, why are you here?

/perform annoyed

I probably have to let you go soon. 

/perform one_finger

But I have one last idea before you are allowed to leave!

Stand up before me slave, same as before! 

Legs apart, hands behind your back!

// Player Pose Check

/perform genital_caress

I bet your {player_name == "boy":
<> cock
- else:
<> pussy
}
<> is throbbing so much at this point.

I almost wish I could help.

I wouldn't have had to do this to you if you had only listened to me when we first met!

You probably need to cum so badly too.

You want that more than anything in the world.

I know how silly little slave {player_name}'s minds work.

{obedience > 5:
Weeeeell...We <I>are</I> alone here...
Can you keep a secret?
+[Yes]
Oh good. I just feel so bad for you, and you've been so good today. 
->RuinedOrgasm
+[No]
Well, we can't have that now. Then you'd get <I>me</I> in trouble!
-> Denial
+[timeout]
Hm, well if cumming matters that little to you.
-> Denial
+[distracted]
If you're not going to pay attention to me, then I won't pay any more attention to you.
-> Denial
-else:
But you and I both know you can't cum, because that wouldn't be a proper punishment!
-> Denial
}

- (RuinedOrgasm)

I'm going to keep playing with you until you cum. But there's one condition!

You <I>have</I> to tell me right before you cum, so I can catch it!

A mess will give us away!

Understand?

+[Yes]
Okay. It's time to let out all of that pent up pressure!

+[No]
-> Denial

+[timeout]
Hm, well if cumming matters that little to you.
-> Denial

+[distracted]
If you're not going to pay attention to me, then I won't pay any more attention to you.
-> Denial

-
-> AboutToCum ->

Cum for me!

/perform amused

/perform laugh

You silly {player_name}, you didn't think I'd let you have an orgasm, did you?

/perform pleased

Only good slaves get to orgasm!

I at least let you cum, to get rid of all of that nasty, built up jizz.

I didn't lie, I did exactly what I told you I would!

But naughty slaves only get ruined orgasms.

/perform point_down

Now, clean up your mess! You're not leaving until this floor is spotless of your filth {player_name == "boy": 
<> mister.
-else:
<> missy.
}

/perform idle

If you've paid all of your punishment markers, now may be a good time to redeem a reward where you may actually be able to do something about that {player_name == "boy": cock|cunt} of yours.

Goodbye slave, I'll be seeing you around, I'm sure!

-> END

- (Denial)

/perform idle

And I think that's where I'm going to leave you for now!

Congratulations, you made it through one of my punishment sessions!

/perform laugh

And I hope it's one of the worst cases of {player_name == "boy": blue balls| a blue bean} you've ever had.

Goodbye slave, I'll be seeing you around, I'm sure!

-> END

= AboutToCum
{cycle: 
- I bet you're right on the edge, aren't you?
- How do you feel? Are you close to cumming?
- Is my little slave going to explode soon?
- Mmm, I'm going to make you cum, right?
- You're not gonna last much longer, are you?
- Do you feel like your {player_name == "boy": 
<> cock
- else:
<> cunt
}
<> is going to burst?
}

->->

-> END

= PayAttention
{cycle:
 - You're not very good at this yet, are you?
    You're supposed to look at me when I'm talking.
    - Bad {player_name}! You should look at me when I speak to you.
    - Oh gee. You need a lot of training. Look at me.
    - Didn't anyone ever teach you to look at people 
    when they're speaking to you?
    - It's very rude not to look at me when I'm speaking to you.
}

+ [paying_attention]
    { cycle:
        - Now... what was I saying? Oh right...
        - Much better. Ahem.
        - Good {player_name}. You might be teachable after all.
        - Now back to your instructions.
    }

->->

-> END