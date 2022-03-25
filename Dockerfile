FROM mcr.microsoft.com/dotnet/framework/aspnet
SHELL ["powershell"]

#RUN Remove-WebSite -Name 'Default Web Site'

COPY dist SimpleWebCalc

RUN New-Website -Name 'SimpleWebCalc' -Port 81 \
    -PhysicalPath 'c:\SimpleWebCalc' -ApplicationPool '.NET v4.5'

EXPOSE 8081

#CMD ["ping", "-t", "localhost"]
