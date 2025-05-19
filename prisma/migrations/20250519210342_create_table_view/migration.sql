-- CreateTable
CREATE TABLE "view" (
    "user_id" TEXT NOT NULL,
    "media_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "records" TEXT NOT NULL,
    "last_token" TEXT NOT NULL,

    CONSTRAINT "view_pkey" PRIMARY KEY ("user_id","media_id")
);

-- CreateIndex
CREATE INDEX "view_user_id_idx" ON "view"("user_id");

-- CreateIndex
CREATE INDEX "view_media_id_idx" ON "view"("media_id");

-- AddForeignKey
ALTER TABLE "view" ADD CONSTRAINT "view_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "view" ADD CONSTRAINT "view_media_id_fkey" FOREIGN KEY ("media_id") REFERENCES "media"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
