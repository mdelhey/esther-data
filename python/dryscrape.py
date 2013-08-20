import dryscrape

#==========================================
# Setup
#==========================================

# Credentials
my_id = ''
my_pin = ''

# set up a web scraping session
sess = dryscrape.Session(base_url = 'https://esther.rice.edu/selfserve/swkscmt.main')

# we don't need images
sess.set_attribute('auto_load_images', False)

# there are some failing HTTP requests, so we need to enter
# a more error-resistant mode (like real browsers do)
#sess.set_error_tolerant(True)

#==========================================
# Run the scrape!
#==========================================

print "Logging in..."
sess.visit('/')

id_field = sess.at_css('#UserID')
pin_field = sess.at_css('#PIN')
id_field.set(my_id)
pin_field.set(my_pind)

id_field.form().submit()
