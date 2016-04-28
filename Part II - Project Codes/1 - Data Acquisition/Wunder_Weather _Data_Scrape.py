import urllib2

from BeautifulSoup import BeautifulSoup
f = open('wunder-data_airport.txt', 'w')
airport=['ATL','ORD','DFW','DEN','LAX','SFO','PHX','IAH','LAS','MCO','SEA','MSP','EWR','DTW','CLT','BOS','SLC','JFK','BWI','LGA','FLL','MDW','MIA','DCA','SAN','TPA','PHL','DAL']
# airport=['IAH']
for i in airport:
    for y in range(2015, 2016):
      for m in range(1, 13):
        for d in range(1, 32):

          # Check if leap year
          if y%400 == 0:
            leap = True
          elif y%100 == 0:
            leap = False
          elif y%4 == 0:
            leap = True
          else:
            leap = False

          # Check if already gone through month
          if (m == 2 and leap and d > 29):
            continue
          elif (m == 2 and d > 28):
            continue
          elif (m in [4, 6, 9, 10] and d > 30):
            continue

          # Open wunderground.com url
          url = "http://www.wunderground.com/history/airport/"+i+"/"+str(y)+ "/" + str(m) + "/" + str(d) + "/DailyHistory.html"
          page = urllib2.urlopen(url)

          # Get temperature from page
          soup = BeautifulSoup(page)
          a=soup.find("div", {"id": "observations_details"}).tbody#.td
          timestamp=i+","+str(y)+ "/" + str(m) + "/" + str(d)

          for tr in a.findAll('tr'): #every hour
              li=''
              for td in tr.findAll('td'):
                  li=li+td.text+','

              f.write(timestamp + ',' + li + '\n')


    # Done getting data! Close file.
f.close()

