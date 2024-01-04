/*
  Warnings:

  - A unique constraint covering the columns `[index]` on the table `Question` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Question" ADD COLUMN     "index" SERIAL NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Question_index_key" ON "Question"("index");
