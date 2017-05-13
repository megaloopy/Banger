#BANGER
## _The Vehicle Maintenance App_

## User(Owner) Model
1. User Name (user_name)
2. Real Name (first & last name)
2. Email
3. Location (Geo _lat & long_)

## Vehicle Model
1. Type :Car / Motorcycle / Airplane / ......
    * Owner / User 
    * Nickname
    * Year
    * Make
    * Model
    * Original odometer reading
    * Needs pictures + Mini Gallery
      showacasing the vehicle from API or upload (AWS image hosting)

## Service Model
1. Log oil changes <br>
    _These apply to all services done_
    * Odometer reading
    * Date of service
    * Where the service was rendered - Location (Google maps API + Geo)
    * Price
2. Tire rotation
3. Breaks

4. Predictive service (Due date) for all service types --> Sendgrid Service to send reminder e-mail to user.

