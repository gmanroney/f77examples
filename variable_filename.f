C ... Sample program showing how to contatenate variables to create a filename

C ... Define character variables for filename and numerical variable (has to be cast as a string) 
      character(len=100) :: varfile
      character(len=10) :: i_string
 
C ... Illustrate example by using loop to create 10 files and put a record in each before closing
      do 10, i=1,10
             write(i_string,'(i0.10)') i
             varfile="file_"//i_string//".dat"
             open (10,file=varfile,status="unknown")
             write(10,*) "Sample entry"
             close(10)
   10 continue
      end
