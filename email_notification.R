library(sendmailR)

#set working directory
setwd("C:/workingdirectorypath")

#####send plain email

from <- "ershashankshekhar00@gmail.com"
to <- "s.singh9@gmail.com"
subject <- "Email Subject"
body <- "Email body."                     
mailControl=list(smtpServer="serverinfo")

sendmail(from=from,to=to,subject=subject,msg=body,control=mailControl)

#####send same email with attachment

#needs full path if not in working directory
attachmentPath <- "Earthquake_project/data.txt"

#same as attachmentPath if using working directory
attachmentName <- "data.txt"

#key part for attachments
attachmentObject <- mime_part(x=attachmentPath,name=attachmentName)
bodyWithAttachment <- list(body,attachmentObject)

sendmail(from=from,to=to,subject=subject,msg=bodyWithAttachment,control=mailControl)