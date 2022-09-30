# issue-prisma-migration
Reproduction repo for https://github.com/prisma/prisma/issues/14651

## Steps
1. Clone
2. Create `.env` file and setup `DATABASE_URL` variable
3. Run `npx prisma migrate dev` to apply existing migration

### Expected behaviour
successful applied one [migration](prisma/migrations/20220930102631_domains/migration.sql).

### Actual behaviour
Existed migration successful applied. But prisma trying to create and apply another one. 
