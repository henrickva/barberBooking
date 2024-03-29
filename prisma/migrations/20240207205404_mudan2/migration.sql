/*
  Warnings:

  - You are about to drop the column `imageURL` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `barbershopId` on the `Booking` table. All the data in the column will be lost.
  - You are about to drop the column `barbershopID` on the `Service` table. All the data in the column will be lost.
  - Added the required column `imageUrl` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `babershopId` to the `Booking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `Booking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `barbershopId` to the `Service` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Booking" DROP CONSTRAINT "Booking_barbershopId_fkey";

-- DropForeignKey
ALTER TABLE "Service" DROP CONSTRAINT "Service_barbershopID_fkey";

-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "imageURL",
ADD COLUMN     "imageUrl" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "barbershopId",
ADD COLUMN     "babershopId" TEXT NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Service" DROP COLUMN "barbershopID",
ADD COLUMN     "barbershopId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Service" ADD CONSTRAINT "Service_barbershopId_fkey" FOREIGN KEY ("barbershopId") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Booking" ADD CONSTRAINT "Booking_babershopId_fkey" FOREIGN KEY ("babershopId") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
