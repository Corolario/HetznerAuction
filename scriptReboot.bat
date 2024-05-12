ping -n 10 1.1.1.1 | find "TTL="
if errorlevel 1 (
	timeout /t 30
    	ping -n 10 8.8.8.8 | find "TTL="
	if errorlevel 1 (
    		start shutdown /r /t 00
	)
)