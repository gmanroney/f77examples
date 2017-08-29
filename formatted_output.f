C ... Sample program showing how to see if file exists and taken action based on response

      implicit none
      integer i,j,k,dummy1
      real dummy2

C ... Define character variables for filename and numerical variable (has to be cast as a string) 
      character(len=100) :: varfile

C ... Pattern to format output
      character(len=100), parameter :: fmtHeader = "(a15,a,a15,a,a15,a,
     &a15,a,a15)"
      character(len=100), parameter :: fmtData = "(i15,a,i15,a,i15,a,
     &i15,a,f15.7)"
      character(len=1) :: delimCsv
 
C ... Define filename and delimiter
      varfile="varfile.dat"
      delimCsv=","

C ... Open the file
      open(unit=10,file=varfile,form='formatted',status='unknown',
     &access='append')

C ... Write header record
      write(10,fmtHeader) "Field1",delimCsv,"Field2",delimCsv,"Field3",
     &delimCsv,"Field4",delimCsv,"Field5"

C ... Write data records; using loops and dummy data here for illustration

      dummy1=10
      dummy2=20.0
      do 100 i=1,5
           do 90 j=1,5
                do 80 k=1,5
                     write(10,fmtData) i,delimCsv,j,delimCsv,k,
     &delimCsv,dummy1,delimCsv,dummy2
   80           continue
   90      continue
  100 continue

C ... Close file
      close (10)

C ... End program
      end

