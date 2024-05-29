# Minitalk
This project is a small data exchange with the client-server model that use UNIX signals to the biderectional comunication in a net enviroment.
The server show messages of multiple and consecutive clients using only SIGUSR1 and SIGUSR2 signals.
To implement this program i use the [libft](https://github.com/AppacheAZ/libft) and my own [printf](https://github.com/AppacheAZ/ft_printf)

## Project features
- Global variables 
- The server must be launched first and show his PID
- The client take the PID of the server and the string that will be send as parameters

## Usage