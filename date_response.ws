slot01 = "next monday 9am".to_date()
slot01date = date_format(slot01, 'DD-MM-YYYY')

template = '{"records":[{"Slot":"Slot 01","Day":"Monday","Time":"{}","Date":"{}"}]}';

respond(
    template.format(
        slot01,
        slot01date
    ),
    200,
    ['Content-Type: application/json']
);
