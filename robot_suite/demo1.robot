*** Settings ***
Library  DateTime

*** Test Cases ***
TC1 Print Name
  log to console  hello,

TC2 Print Date
   ${Date}     get time   Current Date
   log to console  ${date}


TC3 Store Data
    set local variable    ${name}    nandini
    log to console    ${name}

   ${title}   set variable   robotframeworksession
   log to console    ${title}




TC4 Add Number

   set local variable       ${num1}      25
   set local variable       ${num2}      30

   ${sum}   Evaluate     ${num1}+${num2}

  log to console  ${sum}


TC6
  set local variable    ${browser}    chrome

  IF   '${browser}'=='chrome'
       log to console   Yes its chrome
  ELSE
      log to console     no! its not chrome
       END

TC7
    FOR    ${i}    IN   RANGE  1  11   1
      log to console    ${i}

      END

