erDiagram

    AUTHORS ||--o{ BOOKS : writes
    MEMBERS ||--o{ ISSUES : borrows
    BOOKS ||--o{ ISSUES : issued
    ISSUES ||--o| FINES : generates

    AUTHORS {
        INT author_id PK
        VARCHAR author_name
    }

    MEMBERS {
        INT member_id PK
        VARCHAR name
        VARCHAR email
        VARCHAR phone
        DATE join_date
    }

    BOOKS {
        INT book_id PK
        VARCHAR title
        INT author_id FK
        VARCHAR category
        INT published_year
        INT available_copies
    }

    ISSUES {
        INT issue_id PK
        INT book_id FK
        INT member_id FK
        DATE issue_date
        DATE return_date
        VARCHAR status
    }

    FINES {
        INT fine_id PK
        INT issue_id FK
        DECIMAL amount
        VARCHAR paid_status
    }
