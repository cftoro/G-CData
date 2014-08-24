features=read.table("features.txt")

sub_test=read.table("test/subject_test.txt")
act_test=read.table("test/y_test.txt")
x_test=read.table("test/X_test.txt")

sub_train=read.table("train/subject_train.txt")
act_train=read.table("train/y_train.txt")
x_train=read.table("train/X_train.txt")

sub=rbind(sub_train, sub_test)
act=rbind(act_train, act_test)
X=rbind(x_train, x_test)

names(act)="activity"
names(sub)="subject"
names(X)=features[,2]

##First Dataset
meanStd=features[grep("mean|std", features$V2),2]
meanStdData=X[,meanStd]

##Second dataset
activities=read.table("activity_labels.txt")
act=merge(act, activities, by.x="activity", by.y="V1")

all_data=cbind(sub, act$V2, X)
names(all_data)[2]="activity"

mdata=melt(all_data, id=c("subject", "activity"))
means=dcast(mdata, subject+activity ~ variable, mean)

write.table(means, file="tidy_data.txt")
