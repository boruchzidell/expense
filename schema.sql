CREATE TABLE expenses (
    id serial primary key,
    amount numeric(6,2) NOT NULL CHECK(amount > .01),
    memo text NOT NULL,
    created_on date NOT NULL default current_date
);
