/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Workflow` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Workflow` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Workflow` table. All the data in the column will be lost.
  - You are about to drop the `Connection` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Credential` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Execution` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Node` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Connection" DROP CONSTRAINT "Connection_fromNodeId_fkey";

-- DropForeignKey
ALTER TABLE "Connection" DROP CONSTRAINT "Connection_toNodeId_fkey";

-- DropForeignKey
ALTER TABLE "Connection" DROP CONSTRAINT "Connection_workflowId_fkey";

-- DropForeignKey
ALTER TABLE "Credential" DROP CONSTRAINT "Credential_userId_fkey";

-- DropForeignKey
ALTER TABLE "Execution" DROP CONSTRAINT "Execution_workflowId_fkey";

-- DropForeignKey
ALTER TABLE "Node" DROP CONSTRAINT "Node_credentialId_fkey";

-- DropForeignKey
ALTER TABLE "Node" DROP CONSTRAINT "Node_workflowId_fkey";

-- DropForeignKey
ALTER TABLE "Workflow" DROP CONSTRAINT "Workflow_userId_fkey";

-- DropIndex
DROP INDEX "account_userId_idx";

-- DropIndex
DROP INDEX "session_userId_idx";

-- DropIndex
DROP INDEX "verification_identifier_idx";

-- AlterTable
ALTER TABLE "Workflow" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
DROP COLUMN "userId";

-- DropTable
DROP TABLE "Connection";

-- DropTable
DROP TABLE "Credential";

-- DropTable
DROP TABLE "Execution";

-- DropTable
DROP TABLE "Node";

-- DropEnum
DROP TYPE "CredentialType";

-- DropEnum
DROP TYPE "ExecutionStatus";

-- DropEnum
DROP TYPE "NodeType";
