namespace bookshop.db;

using {cuid} from '@sap/cds/common';
//for common reusable types and aspects eg UUID and
//Managed aspects


entity Book : cuid {
    title  : String(100);
    genre  : Genre;
    author : Association to BookAuthors on author.books = $self;

    rating : Integer; // new field for book rating
}
entity Author : cuid {

    name  : String(50);
    booksauthors : Association to many BookAuthors
                on booksauthors.author = $self;
}


entity BookAuthors : cuid 
{
    books : Association to  Book;
    author : Association to Author; 
    

}


type Genre : Integer enum {
    Fiction = 0;
    NonFiction = 1;
}

