start:
	hugo server -D

deploy:
	hugo -D
	cd public
	open index.html