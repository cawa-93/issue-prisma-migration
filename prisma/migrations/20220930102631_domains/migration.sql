-- CreateTable
CREATE TABLE "ShortLink" (
    "id" SERIAL NOT NULL,
    "slug" TEXT,
    "domainId" TEXT,

    CONSTRAINT "ShortLink_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ShortLink_slug_key" ON "ShortLink"("slug") WHERE "domainId" IS NULL;
-- CreateIndex
CREATE UNIQUE INDEX "ShortLink_slug_domainId_key" ON "ShortLink"("slug", "domainId") WHERE "domainId" IS NOT NULL;
