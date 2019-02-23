cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1,5.0,3.2),
                   likes_string = c(1,0,1))
write.csv(x=cats, file = "feline-data.csv",row.names = FALSE)
cats<-read.csv(file="feline-data.csv")
cats
cats$weight
cats$coat
cats$weight+2
paste("my cat is", cats$coat)
cats$coat+cats$weight
typeof(cats$weight)
typeof(cats$coat)
file.show("feline-data2.csv")
str(cats$coat)
cats<-read.csv(file="feline-data2.csv")
my_vector<-vector(length=3)
my_vector
another_vector<-vector(mode ="character", length =3)
combine_vector<-c(2,6,3)
combine_vector
quiz_vector<-c(2,6,"3")
quiz_vector
character_vector<-c('2','4','6')
character_vector
character_coerce_to_number <- as.numeric(character_vector)
character_coerce_to_logic <- as.logical(character_vector)
character_coerce_to_logic <- as.logical(character_coerce_to_number)
cats$likes_coerce_to_logic<- as.logical(cats$likes_string)
ab_vector <- c('a','b')
ab_vector
combine_example <- c(ab_vector, 'SWC')
mySeries <- 1:10
mySeries
seq(1,10, by=0.1)
sequence_example <- seq(10)
my_example <- 5:8
names(my_example) <- c("a","b","c","d")
my_example
list_example <- list(1, "a", TRUE,1+4i)
list_example
another_list <- list(title="Numbers",numbers=1:10, data=TRUE)
another_list
typeof(cats)a
age <- c(2,3,5)
cats
cbind(cats,age)
age_wrong <- c(2,3,5,8)
cbind(cats,age_wrong)
newRow <- list("tortoiseshell", 3.3, 1,TRUE, 9)
cats <- rbind(cats, newRow)
cats$coat<-as.numeric(cats$coat)
Challenge1_vector<-seq(1,26,1)
Challenge1_vector<-Challenge1_vector*2
names(Challenge1_vector)<-LETTERS
Challenge1_vector
coats<-c('tabby','tortoiseshell','tortoiseshell','black','tabby')
coats
str(coats)
typeof(coats)
CATegories<-factor(coats)
class(coats)
class(CATegories)
CATegories
str(CATegories)
str(cats[1,])
cats[1]
cats[[1]]
cats$coat
cats[1,1]
cats[,1]
cats[1,]
nrow(cats)
ncol(cats)
length(cats)
matrix_example<- matrix(0,ncol=6,nrow=3)
matrix_example
?matrix
matrix_example_challenge_col_fill<-matrix(seq(1,50,1),ncol=5,nrow=10)
matrix_example_challenge_row_fill<-matrix(seq(1,50,1),ncol=5,nrow=10,byrow = TRUE)
list_challeng<-list(data_types=c("logical","double","integer","character","complex"), data_structures =c("vectors","matrices"))
cats <- cbind(cats,age)
cats
human_age<-cats$age*7
human_age
human_age<-as.factor(human_age)
typeof(human_age)
human_age<-as.character(human_age)
human_age<-as.numeric(human_age)
human_age
