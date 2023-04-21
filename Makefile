PAGE := hub.srht.site
FILES := index.html

site.tar.gz: $(FILES)
	tar -cvz $(FILES) > site.tar.gz

.PHONY: publish
publish: site.tar.gz
	hut pages publish -d $(PAGE) site.tar.gz
