#R 變數
  #變數指派
    x <-2
    x
    #連續變數指派
    x<-y<-4
    x
    #也可以使用assign([varibleName],[value])
    assign("x",8)
    x
  #Remove Variable
    rm(x) #移除變數
    x #you will see the console say "Error: object 'x' not found"
    
    #或者你也可以使用另外一個函數gc()，他會釋放記憶體空間，但實際是R已經會記憶體回收
    gc(y) #Garbage Collection
  
  #Data Type (資料型別)，四種最主要的資料型別為numeric,character,Date/POSIXct(時間)和logical
    #檢測資料型別 class
      x<- 10
      class(10) #the console will show "numric"
    #數值資料
      is.numeric(x)
    #integer 很重要但是較少用到的，其只接受整數
      i <- 5L
      i
      is.integer(i) #是否為整數
      #整數也可以成為numeric
      is.numeric(i)
      #在某些情況之下，R會將integer 轉換為numeric，x例如當一個integer * numeric時
      #或者是當integer / integer
      class(4L)
      class(2.8)
      class(4L*2.8) # integer*numeric --> numeric
      class(8L/4L) #integer/interger -->numeric
    #字元資料
      x <- "data"
      x #顯示結果data有被""包含
      y <- factor("data")
      y #顯示結果data沒有被""包含，並且會有顯示"Levels:data"
      
      nchar(x) #找出變數(字元)的長度，但是這個方式並不是用於factor
      nchar(y) #螢幕會顯示 nchar()' requires a character vector
      
    #日期
      date1 <- as.Date("2016-01-15")
      date1      
      class(date1)
      as.numeric(date1)#將日期轉數字 螢幕顯示16815
      
      date2 <- as.POSIXct("2016-01-15 11:05")
      date2 #螢幕顯示 "2016-01-15 11:05:00 CST"
      class(date2) #螢幕顯示："POSIXct" "POSIXt" 
      as.numeric(date2)
      