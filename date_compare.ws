date1 = '2022-01-15'

datea = '2022-01-14'
dateb = '2022-01-01'

sevenDays = 604800;

if (date_interval(datea, date1) > sevenDays) {
    echo('Date A is earlier than 7 days')
}

if (date_interval(dateb, date1) > sevenDays) {
    echo('Date B is earlier than 7 days')
}
