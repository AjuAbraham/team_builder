-- CreateTable
CREATE TABLE "public"."Courses" (
    "courseId" TEXT NOT NULL,
    "courseName" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "createdBy" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Courses_pkey" PRIMARY KEY ("courseId")
);

-- CreateTable
CREATE TABLE "public"."Course_Enrollments" (
    "enrollmentId" TEXT NOT NULL,
    "enrolledUser" TEXT NOT NULL,
    "purchaseAmmount" INTEGER,
    "valid_till" TIMESTAMP(3) NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "course" TEXT NOT NULL,

    CONSTRAINT "Course_Enrollments_pkey" PRIMARY KEY ("enrollmentId")
);

-- AddForeignKey
ALTER TABLE "public"."Courses" ADD CONSTRAINT "Courses_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "public"."User"("userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Course_Enrollments" ADD CONSTRAINT "Course_Enrollments_course_fkey" FOREIGN KEY ("course") REFERENCES "public"."Courses"("courseId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Course_Enrollments" ADD CONSTRAINT "Course_Enrollments_enrolledUser_fkey" FOREIGN KEY ("enrolledUser") REFERENCES "public"."User"("userId") ON DELETE CASCADE ON UPDATE CASCADE;
