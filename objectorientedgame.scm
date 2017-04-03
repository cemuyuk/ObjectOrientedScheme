;;;  	    	  	  
;;;  	    	  	  
;; Do NOT modify or delete the lines below.
(#%require (only racket/base random))
(load "objsys.scm")  	    	  	  
(load "objtypes.scm")  	    	  	  
(load "setup.scm")  	    	  	  
(define nil '())  	    	  	  
(define your-answer-here #f)  	    	  	  
;;;;;;;;;  	    	  	      	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:;:;:::;;;
;;;;;;;;;;;;; Computer Exercise 0: Setting up ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  	    	  	  
;;;;;;;;;;;;; CODES: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;(setup 'cem)

;(ask me 'look-around)
	    
;(ask (ask me 'location) 'name)

;(ask me 'name)

;(ask me 'say '(Hello World!))

;(ask me 'go 'north)

;(ask me 'take....)

;(ask me 'drop....)

;(ask me 'die)

	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:;:;:::;;:
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;> (ask me 'look-around)
;You are in dorms 
;You are not holding anything. 
;You see stuff in the room: tons-of-code 
;There are no other people around you. 
;The exits are in directions: in south north ok

;> (ask (ask me 'location) 'name)
;adm-building

;> (ask me 'name)
;cem

;> (ask me 'say '(Hello World!!))
;At dorms cem says -- hello world!!

;> (ask me 'go 'south)
;cem moves from adm-building to dorms 
;lambda-man moves from registrar-office to bursar-office 
;comp200-student moves from eng-building to eng-z21 
;At eng-z21 comp200-student says -- Hi prof-yuret 
;At eng-z21 comp200-student says -- I take problem-set from prof-yuret 
;At eng-z21 prof-yuret says -- I lose problem-set 
;At eng-z21 prof-yuret says -- Yaaaah! I am upset! 
;prof-yuret moves from eng-z21 to eng-building 
;At eng-building prof-yuret says -- Hi alyssa-p-hacker 
;alyssa-p-hacker moves from eng-building to parking-lot 
;At parking-lot alyssa-p-hacker says -- I try but cannot take fancy-cars 
;ben-bitdiddle moves from adm-building to dorms 
;At dorms ben-bitdiddle says -- Hi cem 
;ben-bitdiddle moves from dorms to adm-building 
;--- the-clock Tick 1 --- 
;You are in dorms 
;You are not holding anything. 
;You see stuff in the room: tons-of-code 
;There are no other people around you. 
;The exits are in directions: north #t

;> (ask me 'take (thing-named 'tons-of-code))
;At dorms cem says -- I take tons-of-code from dorms 

;> (ask me 'drop (thing-named 'tons-of-code))
;At dorms cem says -- I drop tons-of-code at dorms

;> (ask me 'die)
;At dorms cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;cem moves from dorms to heaven game-over-for-you-dude
 	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;;;;
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;;;:
;;;;;; Computer Exercise 1: Understanding installation;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;;:;
;;  	    	  	  
;;;;;;;;;;;;; ANSWER: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;The method ask takes an object as an argument and applies the entered method to that object itself. Whereas the delegate method takes the method from in-object and
;applies it to for-object. So, that what we want to happen comes true. For example, if I want to write the "install" method for autonomous-player, I have to use 
;delegate for it. Because if I use ask then it will find the install method and apply it to in-object, where as we want it to be applied to for-object.
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;;::
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;:;;
;;;;;;;;;;;; Computer Exercise 2: Who just died? ;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;:;:
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  


(define (find-the-last-dead object)
  (if (null? (ask object 'things)) 
      "Noone died buddy!"
      (ask (car (ask object 'things)) 'name)))
  
;(setup 'cem)
;(find-the-last-dead heaven) 	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;This method I implemented takes a place as input. Since we are looking for dead, and we know that there is a universal place called heaven, I can check the first thing
;in heaven by simply writing (ask (car (ask object 'things)) 'name). Since everything in heaven must be humans, I don't have to check it it is person? or not. 
;After a person died, the method finds the list of the things in heaven and checks the car of that list which results what we want.
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;(ask me 'look-around)

;You are in parking-lot 
;You are not holding anything. 
;You see stuff in the room: fancy-cars 
;There are no other people around you. 
;The exits are in directions: east ok
;> (find-the-last-dead heaven)
;"Noone died buddy!"
;> (ask me 'die)

;At parking-lot cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;cem moves from parking-lot to heaven game-over-for-you-dude
;> (find-the-last-dead heaven)
;cem
   	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;:::;;;
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;::;;:::;;:
;;;;;;;; Computer exercise 3: Having a quick look ;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;;;;
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;The code is already written in the objecttypes.scm that was given.
    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;What we do for this is that, everytime that a user calls 'go, the avatar would tell what was going on. This can simply be handled by overwriting the go method in person 
;and add (ask self 'look-around) inside avatar's go message. In the transcript, after the clock tick is done we will see the look-around resuly.
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  

;--- the-clock Tick 0 --- 
;You are in great-court 
;You are not holding anything. 
;You see stuff in the room: mine8 flag-pole 
;You see other people: prof-yuret 
;The exits are in directions: up east west south north #t  	    	  	  
	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;;::
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;:;;
;;;;;; Computer exercise 4: But I'm too young to die!! ;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;:;:
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	    	  
  	    	  	  
(define (make-person name birthplace) ; symbol, location -> person
  (let ((mobile-thing-part (make-mobile-thing name birthplace))
	(container-part    (make-container))
	(health            3)  	    	  	  
	(strength          1)
        (life 3))  	    	  	  
    (lambda (message)  	    	  	  
      (case message  	    	  	  
	((PERSON?) (lambda (self) #T))
	((STRENGTH) (lambda (self) strength))
	((HEALTH) (lambda (self) health))
        ((SAY)  	    	  	  
         (lambda (self list-of-stuff)
           (ask screen 'TELL-ROOM (ask self 'location)
                (append (list "At" (ask (ask self 'LOCATION) 'NAME)
                                 (ask self 'NAME) "says --")
                           list-of-stuff))
                  'SAID-AND-HEARD))
	((HAVE-FIT)  	    	  	  
	 (lambda (self)  	    	  	  
	   (ask self 'SAY '("Yaaaah! I am upset!"))
	   'I-feel-better-now))
  	    	  	  
	((PEOPLE-AROUND)	; other people in room...
	 (lambda (self)  	    	  	  
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (people (myfilter (lambda (x) (is-a x 'PERSON?)) in-room)))
	     (delq self people))))
  	    	  	  
	((STUFF-AROUND)		; stuff (non people) in room...
	 (lambda (self)  	    	  	  
	   (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
		  (stuff (myfilter (lambda (x) (not (is-a x 'PERSON?))) in-room)))
	     stuff)))  	    	  	  
  	    	  	  
	((PEEK-AROUND)		; other people's stuff...
	 (lambda (self)  	    	  	  
	   (let ((people (ask self 'PEOPLE-AROUND)))
	     (accumulate append '() (map (lambda (p) (ask p 'THINGS)) people)))))
  	    	  	  
	((TAKE)  	    	  	  
	 (lambda (self thing)  	    	  	  
	   (cond ((ask self 'HAVE-THING? thing)  ; already have it
		  (ask self 'SAY (list "I am already carrying"
				       (ask thing 'NAME)))
		  #f)  	    	  	  
		 ((or (is-a thing 'PERSON?)
		      (not (is-a thing 'MOBILE-THING?)))
		  (ask self 'SAY (list "I try but cannot take"
				       (ask thing 'NAME)))
		  #F)  	    	  	  
		 (else  	    	  	  
		  (let ((owner (ask thing 'LOCATION)))
		    (ask self 'SAY (list "I take" (ask thing 'NAME)
					 "from" (ask owner 'NAME)))
		    (if (is-a owner 'PERSON?)
			(ask owner 'LOSE thing self)
			(ask thing 'CHANGE-LOCATION self))
		    thing)))))  	    	  	  
  	    	  	  
	((LOSE)  	    	  	  
	 (lambda (self thing lose-to)
	   (ask self 'SAY (list "I lose" (ask thing 'NAME)))
	   (ask self 'HAVE-FIT)
	   (ask thing 'CHANGE-LOCATION lose-to)))
  	    	  	  
	((DROP)  	    	  	  
	 (lambda (self thing)  	    	  	  
	   (ask self 'SAY (list "I drop" (ask thing 'NAME)
				"at" (ask (ask self 'LOCATION) 'NAME)))
	   (ask thing 'CHANGE-LOCATION (ask self 'LOCATION))))
  	    	  	  
        ((GO-EXIT)  	    	  	  
         (lambda (self exit)  	    	  	  
           (ask exit 'USE self)))
  	    	  	  
	((GO)  	    	  	  
	 (lambda (self direction) ; person, symbol -> boolean
	   (let ((exit (ask (ask self 'LOCATION) 'EXIT-TOWARDS direction)))
	     (if (is-a exit 'EXIT?)
                 (ask self 'GO-EXIT exit)
		 (begin (ask screen 'TELL-ROOM (ask self 'LOCATION)
			     (list "No exit in" direction "direction"))
			#F)))))
	((SUFFER)  	    	  	  
	 (lambda (self hits)  	    	  	  
	   (ask self 'SAY (list "Ouch!" hits "hits is more than I want!"))
	   (set! health (- health hits))
	   (if (<= health 0) (ask self 'DIE))
	   health))  	    	  	  
  	    	  	  
	((DEATH-SCREAM)  	    	  	  
	 (lambda (self)  	    	  	  
	   (ask screen 'TELL-WORLD
		'("An earth-shattering, soul-piercing scream is heard..."))))
  	    	  	  
	((ENTER-ROOM)  	    	  	  
	 (lambda (self)  	    	  	  
	   (let ((others (ask self 'PEOPLE-AROUND)))
	     (if (not (null? others))
		 (ask self 'SAY (cons "Hi" (names-of others)))))
	   (ask (ask self 'location) 'make-noise self)
	   #T))  	    	  	  
  	    	  	  
	;; Here is the original DIE method
	;; ((DIE)  	    	  	  
	;;  (lambda (self)  	    	  	  
	;;    (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
	;;    (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
	;; 	     (ask self 'THINGS))
	;;    (ask self 'DEATH-SCREAM)
	;;    (ask death-exit 'USE self)
	;;    'GAME-OVER-FOR-YOU-DUDE))
  	    	  	  
	;; Your version goes here:
  	    	  	  
          ((DIE)  	    	  	  
           (lambda (self)
             (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
	     (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
		       (ask self 'THINGS))
	     (ask self 'DEATH-SCREAM)
             (set! life (- life 1))
             (set! health 3)
             (if (< life 0)
                 (begin (ask death-exit 'USE self)
	         'GAME-OVER-FOR-YOU-DUDE)
                 (begin (begin (ask self 'change-location birthplace) (ask self 'say '("Life:")))
                        life)
                 )
             )) 	    	  	  
  	    	  	  
	(else (find-method message mobile-thing-part container-part))))))

;(setup 'cem)
;(ask me 'look-around)

;(ask me 'die)
;(ask me 'die)
;(ask me 'die)
;(ask me 'die)

  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;I simply add a variable called life and I set it to 3. Whenever the person dies, it changes its location to its birthplace and decreases life by 1. Whenever the variable life
;is 0, then the person dies instead of changing location. I control this by using a simple if statement.
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
;At eng-building cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;At eng-building cem says -- Life: 2

;At eng-building cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;At eng-building cem says -- Life: 1

;At eng-building cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;At eng-building cem says -- Life: 0

;At eng-building cem says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;cem moves from eng-building to heaven game-over-for-you-dude	 	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;:::;;;
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;:::;:::;;:
;;; Computer exercise 5: Perhaps to arm oneself against a sea of .... ;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;;;;
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	    	  	  

(define (make-weapon name location damage)
  (let ((mobile-part (make-mobile-thing name location)))
    (lambda (message)  	    	  	  
      (case message  	    	  	  
	((WEAPON?) (lambda (self) #T))
        ((DAMAGE) (lambda (self) damage))
        ((HIT) (lambda (self person-using target)
                 (begin (ask target 'suffer (random-number damage)) (ask person-using 'say (list "I am the person who is attacking to" (ask target 'name)
                                              "with the weapon" (ask (car (ask person-using 'things)) 'name) ".")))
                 ))
	(else (get-method message mobile-part))))))

(define (create-weapon name location damage)
  (create make-weapon name location damage))

;(setup 'cem)
;(ask me 'look-around)

     
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;This instance has methods as asked in the .pdf. Checks whether an object is a weapon or not. It has the argument "damage". The most important thing here is the hit method.
;I implemented it by using the method "suffer". By the user entered value damage, we find a random real damage that will be cause to the target and we make the target suffer
;that amount. Then I asked person using the weapon to say its name and what he did by simply using the "say" method. I could even use 'emit method but I gave every info 
;using "say" as well.
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
   	  	  
;You are in gym 
;You are not holding anything. 
;You see stuff in the room: wmine15 wmine13 wmine10 basketball 
;You see other people: violent3 lambda-man 
;The exits are in directions: east ok
;> (ask me 'take (thing-named 'wmine15))
;
;At gym cem says -- I take wmine15 from gym 
;> (ask (thing-named 'wmine15) 'hit me (thing-named 'lambda-man))
;
;At gym lambda-man says -- Ouch! 1 hits is more than I want! 
;At gym cem says -- I am the person who is attacking to lambda-man with the weapon wmine15 . said-and-heard  	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;;::	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;:;;
;;;;;;;; Computer exercise 6: Good thing I'm armed and dangerous ;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;:;:
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 


(define (make-violent-person name birthplace activity miserly frequency)
  (let ((autonomous-part (make-autonomous-player name birthplace activity miserly)))
    (lambda (message)  	    	  	  
      (case message  	    	  	  
	((VIOLENT-PERSON?) (lambda (self) #T))
        ((BE-VIOLENT) (lambda (self)
                        (let* ((person-to-attack (pick-random (ask self 'people-around)))
                              (probability (random frequency))
                              (weapon (pick-random (myfilter (lambda (x) (is-a x 'WEAPON?)) (ask self 'things)))))
                          (if (= probability 0) 
                              (if (and weapon person-to-attack)
                              (ask weapon 'hit self person-to-attack)
                              "There is neither a person nor a weapon in this room!")
                              "You are lucky buddy!! I'm on my good mood today."))))                                                     
	((INSTALL) (lambda (self)
                     (ask clock 'ADD-CALLBACK
			  (make-clock-callback 'move-and-take-stuff self
					       'MOVE-AND-TAKE-STUFF))
                     (ask clock 'ADD-CALLBACK (make-clock-callback 'be-violent self 'BE-VIOLENT))
                     (delegate autonomous-part self 'INSTALL)))	     	    	  	  
	(else (get-method message autonomous-part))))))


(define (create-violent-person name birthplace activity miserly frequency)
  (create make-violent-person name birthplace activity miserly frequency))


;(ask screen 'deity-mode #t)

;(setup 'cem)

  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;Violent-person instance has "VIOLENT-PERSON?" method as every instance. The way it works is quite similar to autonomous-person. Rather than moving around violent-person
;attacks other people by using his/her weapon he/she has it. I check people in the room by using the method "people-around" and then randomly pick one of themby using
;"pick-random" then pick random weapon from things. Of course before doing that I return the list of people in the room by using myfilter and similarly for weapons
;I use myfilter to find the list of weapons from the things the violent-person has. Then, if weapon and person-in-the-room exists the if clause execute the first consequence.
;Which is to "hit" the target.

;Violent person acts spontaneously, it has a probability that might make him attack. I also control this by an if clause, if probability holds then the consequence gets executed
;and violent person attacks.

;Install method is the same with autonomous-person and it only takes 'be-violent inside call-back method to make it attack spontaneously.
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    

;--- the-clock Tick 7 --- 
;violent4 moves from graduation-stage to great-court 
;violent2 moves from deans-office to eng-z21 
;violent1 moves from divan to cici-bufe 
;At cici-bufe violent1 says -- Hi cici comp200-student 
;At cici-bufe cici says -- Ouch! 3 hits is more than I want! 
;At cici-bufe cici says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;At cici-bufe cici says -- Life: 2
;At cici-bufe violent1 says -- I am the person who is attacking to cici with the weapon mine18 . 
;lambda-man moves from eng-building to soccer-field 
;lambda-man moves from soccer-field to eng-building 
;At eng-building lambda-man says -- Hi violent3 
;lambda-man moves from eng-building to eng-z21 
;At eng-z21 lambda-man says -- Hi violent2 
;prof-yuret moves from gym to library 
;At library prof-yuret says -- Hi ben-bitdiddle violent5 
;At library prof-yuret says -- I take mine7 from library 
;alyssa-p-hacker moves from suzy-cafe to student-center 
;alyssa-p-hacker moves from student-center to suzy-cafe 
;At suzy-cafe alyssa-p-hacker says -- Hi suzy 
;At suzy-cafe alyssa-p-hacker says -- I take sicp-book from suzy-cafe 
;ben-bitdiddle moves from library to gym 
;ben-bitdiddle moves from gym to library 
;At library ben-bitdiddle says -- Hi prof-yuret violent5 
;At library ben-bitdiddle says -- I take mine5 from prof-yuret 
;At library prof-yuret says -- I lose mine5 
;At library prof-yuret says -- Yaaaah! I am upset!	    	  	    	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;:::;;;
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;;;:::;;:
;;; Computer exercise 7: A good hacker could defuse this situation ;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;;;;
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;; 

(define (make-bomb name birthplace damage)
  (let ((mobile-part (make-mobile-thing name birthplace))
	(aware-part (make-aware-thing))
	(armed? #f))
    (lambda (msg)
      (case msg
    ((BOMB?) (lambda (self) #T))
    ((ARMED?) (lambda (self) armed?))
    ((DISARM) (lambda (self) (set! armed? #F)))
    ((ARM) (lambda (self) (set! armed? #T)))
    ((TRIGGER) (lambda (self) (if armed? (ask self 'ACTIVATE))))
    ((HEARD-NOISE) (lambda (self who) (ask self 'TRIGGER)
                     (delegate aware-part self 'HEARD-NOISE who)))
    ((ACTIVATE) (lambda (self)
                  (let* ((real-damage (random-number damage))                    
                    ;(the-room (ask (ask self 'location) 'things))
                    (people-in-the-room (myfilter (lambda (x) (is-a x 'PERSON?)) (ask (ask self 'location)'things))))
                    (ask self 'EMIT (list "I," (ask self 'name) ",am the bomb who is exploded with the damage:" real-damage "."))
                    (if (null? people-in-the-room)
                        "No one got hurt because there were no people in this room!"
                        (for-each (lambda (p) (ask p 'SUFFER real-damage)) people-in-the-room))
                    (ask self 'DESTROY))))
        (else (find-method msg mobile-part aware-part))))))


(define (create-bomb name birthplace damage)
  (create make-bomb name birthplace damage))
                        
                        
;(setup 'cem)  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;As usual again the make-bomb instance has (BOMB?) method to check if the object is a bomb. There is (ARMED?) which shows whether a bomb is armed or not.
;(ARM) method basically makes (ARMED?) predicate to #T. Oppositely, (DISARM) method makes (ARMED?) predicate to be #F. Then there is (TRIGGER) method
;if it is called, then the program asks object to activate itself(if it's armed).

;(HEARD NOISE) method calls trigger, and trigger the activate(if it's armed) and then the bomb explodes. If there is person coming in, heard noise method gets called and
;eventually the bomb explodes.

;I thing the most important part of this instance is the (ACTIVATE) method. If people inside the room which we find by 
;(people-in-the-room (myfilter (lambda (x) (is-a x 'PERSON?)) (ask (ask self 'location)'things))) is not null, then for each person we call the method 'SUFFER to decrease
;their from their strength.

;When to activate the bomb entirely depends if it is armed or not. If it is armed, then heard noise method calls everything up and then the bomb explodes.
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;

;(setup 'cem)
;You are in student-center 
;You are not holding anything. 
;You see stuff in the room: mbomb7 mine17 mine3 
;There are no other people around you. 
;The exits are in directions: in west ok
;> (ask me 'take (thing-named 'mbomb7))

;At student-center cem says -- I take mbomb7 from student-center 
;> (ask me 'go 'west)

;cem moves from student-center to great-court 
;...
;--- the-clock Tick 0 ---
;
;You are in great-court 
;You are holding: mbomb7 
;You see stuff in the room: comp200-midterm chair-of-the-faculty flag-pole 
;You see other people: violent4 
;The exits are in directions: up east west south north #t
;> (ask me 'drop (thing-named 'mbomb7))
;
;At great-court cem says -- I drop mbomb7 at great-court 
;> (ask (thing-named 'mbomb7) 'arm)
;> (ask me 'go 'west)

;cem moves from great-court to library 
;...
;At library violent4 says -- Hi cem 
;violent4 moves from library to great-court 
;At great-court I, mbomb7 ,am the bomb who is exploded with the damage: 2 . 
;At great-court violent4 says -- Ouch! 2 hits is more than I want! 
;...
;--- the-clock Tick 1 ---
  	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;;::
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;:;;
;;;; Computer exercise 8: Well, maybe only if they have enough time ;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;:;:
;;  	    	  	  
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	    	  	  
(define (make-timed-bomb name birthplace damage)
  (let ((bomb-part (make-bomb name birthplace damage))
	(time 3)
        (pred #f))
    (lambda (msg)
      (case msg
    ((TIMED-BOMB?) (lambda (self) #T))
    ((TRIGGER) (lambda (self) (cond (pred "I am exploded")
                                    ((ask self 'armed?) 
                                    (begin (set! pred #T) (ask clock 'ADD-CALLBACK (make-clock-callback 'timing self 'TIMING))
                                    (ask self 'EMIT (list "I," (ask self 'name) ", am activated.")))))))                                
    ((TIMING) (lambda (self) (cond ((= time 0) (begin (ask self 'ACTIVATE) (set! time (- time 1))))
                                   ((> time 0) (begin (ask self 'EMIT (list "I," (ask self 'name) ",am the timed bomb and I am gonna explode in" time "ticks.")) 
                                                       (set! time (- time 1))))
                                   (else (ask self 'EMIT (list "I," (ask self 'name) ", was a timed-bomb once but already blew up!"))))))
                                     (else (find-method msg bomb-part))))))


(define (create-bomb-with-timer name birthplace damage)
  (create make-timed-bomb name birthplace damage))  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;This instance basically works the same way as the regular bomb. The only difference is that we add a callback to trigger and implement another method called as timing
;to use inside callback which we used in trigger. Since we want timed-bomb to have a different time each time I implement the timing method to decrease the value of "time"
;and when it is 0, I called (ask self 'ACTIVATE) which explodes the bomb. Every condition, (either the time passed or not) are being checked by cond clauses
;and when the time gets 0 it explodes. After everytick the time of the bomb gets less and less and when it gets 0 it explodes. After it explodes, in every tick it
;gives a message saying that "I already exploded". 
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
;
;> (ask (thing-named 'tbomb9) 'arm)
;> (run-clock 7)
;
;...
;At deans-office I, tbomb9 , am activated. 
;--- the-clock Tick 0 ---
;
;...
;At deans-office I, tbomb9 ,am the timed bomb and I am gonna explode in 3 ticks.
;--- the-clock Tick 1---
;
;...
;At deans-office I, tbomb9 ,am the timed bomb and I am gonna explode in 2 ticks.
;--- the-clock Tick 2---
;
;...
;At deans-office I, tbomb9 ,am the timed bomb and I am gonna explode in 1 ticks. 
;--- the-clock Tick 3---
;
;...
;At deans-office I, tbomb9 ,am the bomb who is exploded with the damage: 9 . 
;--- the-clock Tick 4---
;
;...
;At deans-office I, tbomb9 , was a timed-bomb once but already blew up!
;--- the-clock Tick 5---
;
;...
;At deans-office I, tbomb9 , was a timed-bomb once but already blew up! 
;--- the-clock Tick 6---

  	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;:::;;;
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;:::;;:;:::;;:
;;;;;;;;; Computer Exercise 9: Even you can change the world! ;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;;;;
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;;;:
;;;;;;;;;;;;; DESCRIPTION: ;;;;;;;;;;;;;
;;  	    	  	  
;I want to create lions walking around rooms. Actually in Koc University. Some of them are domestic that they dont attack to people but some of them are violent that they
;attack. Even the ones that are violent wont attack humans unless got into contact with them. If a human tries to play or touch to the lion and that lion happens to be a violent
;one then it attacks and directly kills the human. And humans will be able to educate them. And in time they get violent again if they dont interact with humans.

;For the lions I want to inherit autonomus person class.	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;;:;
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;

(define (make-lions name birthplace activity miserly domestic)
  (let ((autonomous-part (make-autonomous-player name birthplace activity miserly)))
    (lambda (message)  	    	  	  
      (case message  	    	  	  
	((LION?) (lambda (self) #T))
	((INSTALL) (lambda (self)
		     (ask clock 'ADD-CALLBACK
			  (make-clock-callback 'move-and-take-stuff self
					       'MOVE-AND-TAKE-STUFF))
		     (delegate person-part self 'INSTALL)))
	((MOVE-AND-TAKE-STUFF)  	    	  	  
	 (lambda (self)  	    	  	  
	   ;; first move  	    	  	  
	   (let loop ((moves (random-number activity)))
	     (if (= moves 0)  	    	  	  
		 'done-moving  	    	  	  
		 (begin  	    	  	  
		   (ask self 'MOVE-SOMEWHERE)
		   (loop (- moves 1)))))
	   ;; then take stuff  	    	  	  
	   (if (= (random miserly) 0)
		  (ask self 'TAKE-SOMETHING))
	   'done-for-this-tick))
	((DIE)  	    	  	  
	 (lambda (self)  	    	  	  
	   (ask clock 'REMOVE-CALLBACK self 'move-and-take-stuff)
	   (delegate person-part self 'DIE)))
	((MOVE-SOMEWHERE)  	    	  	  
	 (lambda (self)  	    	  	  
	   (let ((exit (random-exit (ask self 'LOCATION))))
	     (if (not (eqv? #f exit)) (ask self 'GO-EXIT exit)))))
	((TAKE-SOMETHING)  	    	  	  
	 (lambda (self)  	    	  	  
	   (let* ((stuff-in-room (ask self 'STUFF-AROUND))
		  (other-peoples-stuff (ask self 'PEEK-AROUND))
		  (pick-from (append stuff-in-room other-peoples-stuff)))
	     (if (not (null? pick-from))
		 (ask self 'TAKE (pick-random pick-from))
		 #F))))  	    	  	  
	(else (get-method message person-part))))))
  	    	  	  
(define (create-autonomous-player name birthplace activity miserly)
  (create make-autonomous-player name birthplace activity miserly))   	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;;::
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	    	  	  
  	    	  	  
;I COULDNT FINISH IT THE TIME WASNT ENOUGH	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;:;;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	    	  	  
your-answer-here  	    	  	  
  	    	  	  
  	    	  	  
;;  	    	  	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;:;:
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
  	    	  	  
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;::;
;# DO NOT FORGET TO SUBMIT YOUR WORK BEFORE THE DEADLINE!         #
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;::;:::
;# GOOD LUCK!                                                     #
;;;;;;;::;;;;:::;;;;::::;;:;::;:;;:::;;;:;::;;;;:::;::;;;::;;;:;::;;;;;:::;;;
  	    	  	  
  	    	  (setup 'cem)	  
  	    (ask me 'look-around)


  	    	  	  
  	    	  	  
  	    	  	  
