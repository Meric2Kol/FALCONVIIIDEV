public class DatetimeMethodsDemo2 {
    public void printSubscriptionEndDate() {
        // 3.1 Subscription is done for 1000 days.
        // Assuming that subscription is done today.
        // Print subscription end date.

        // subcription start date as TODAY
        date subscriptionStartDate = date.today();

        // end date is after 1000 days
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('Subscription end date is ' + subscriptionEndDate);

        //get year and month of END DATE and print it
        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date year is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth); 
    }
    
    // 4. Create one method printOfferEndDateTime()
    public void printOfferEndDateTime(){
        // Assuming offer starts right now,
        // and offer is valid till 51 hours.
        // Print offer end date and time.

        // get current datetime
        datetime dtNow = datetime.now();

        // calculate datetime after 51 hours
        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('Offer will end on: ' + dtOfferEnd);

        // print 'date' component of the offer end date
        date offerEndDate = dtOfferEnd.date();

        // .date returns date in current user timezone
        system.debug('offer end date is ' + offerEndDate);
    }

        
}