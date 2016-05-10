#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main (void)
{
	int pid ;
	pid = fork();
	if (pid == 0)
	{
		char * null = NULL ;
		//system() ;
		system("sudo python /home/pi/Desktop/SpiderDrone/Python/TestPWM.py 50.0");
		//execl("/home/pi/Desktop/SpiderDrone/Python/Fork_TestPWM", null);
		return 0 ;
	}
	//wait() ;
	return 0 ;
}
