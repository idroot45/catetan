# Copy the built css into the includes directory so that it can be used in the
# amp pages
cp _assets/build/styles.css _includes/.

# Amp doesn't like the !important css attribute that pure css uses, so we
# remove it!
sed -i -e 's/!important//g' _includes/styles.css

# pure contains IE7 specific hacks to get a style to reset using a syntax error.
# This is not needed for AMP, so we'll remove it from the css. See stackoverflow
# for more information https://stackoverflow.com/q/1690642/433785
sed -i -e 's/*display:inline;//g' _includes/styles.css
For regular posts, I updated their layout to includ
