@                                                                                                                                                                                                                                                                                                                                           echo off



for /f usebacktokens^=* %%T in ( `cmd/q/c "for /f usebacktokens^=1* %%a in ( '%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%T%TIME:~,2%%TIME:~3,2%%TIME:~6,2%' ) do for /f usebacktokens^=* %%c in ( `cmd/q/c if [%%b] ^=^= [] ^( echo %%a^) else echo %%a0%%b` ) do title %~n0^|%USERDOMAIN%^|%%c&echo %%c"`
) do echo %%T
