using bookshop.db as db from '../db/schema';

@path:'/admin'
service AdminService {
    entity Books       @(readonly) as projection on db.Book;
    entity Authors     @(readonly) as projection on db.Author;
    entity BookAuthors @(readonly) as projection on db.BookAuthors;
}
