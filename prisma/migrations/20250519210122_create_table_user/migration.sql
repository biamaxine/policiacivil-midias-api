-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('administrator_plus', 'administrator', 'forensic_user', 'internal_user', 'external_user');

-- CreateEnum
CREATE TYPE "UserDomain" AS ENUM ('pcam', 'dptc', 'tjam', 'defp', 'mpam');

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" VARCHAR(255) NOT NULL,
    "cpf" VARCHAR(11),
    "password" VARCHAR(60),
    "name" VARCHAR(255),
    "role" "UserRole" NOT NULL DEFAULT 'external_user',
    "domain" "UserDomain" NOT NULL DEFAULT 'pcam',

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_cpf_key" ON "users"("cpf");

-- CreateIndex
CREATE INDEX "users_name_idx" ON "users"("name");

-- CreateIndex
CREATE INDEX "users_role_idx" ON "users"("role");

-- CreateIndex
CREATE INDEX "users_domain_idx" ON "users"("domain");
