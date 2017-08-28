C ... Sample program showing how to see if file exists and taken action based on response

C ... Define character variables for filename and numerical variable (has to be cast as a string) 
      character(len=100) :: varfile

C ... Create logical variable to store result of check if file exists
      logical varfile_exist
 
C ... Use inquire command to see if file exists. Logical value used in subsequent if statement
      inquire (file=varfile,exist=varfile_exist)

C ... If file exists just open it for input; if it does not open it and create a header record
      varfile="varfile.dat"
      if (varfile_exist)then
          open(unit=10,file=varfile,form='formatted',
     &    status='unknown',access='append')
      else
          open(unit=10,file=varfile,form='formatted',
     &    status='unknown',access='append')
          write(10,*) "Sample Header Record"
      endif

C ... Close file
      close (10)

C ... End program
      end

