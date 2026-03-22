-- enrollments (used in multiple queries)
CREATE INDEX "enrollments_student_course"
ON "enrollments" ("student_id", "course_id");

CREATE INDEX "enrollments_course_id"
ON "enrollments" ("course_id");


-- courses (covering all cases with minimal indexes)
CREATE INDEX "courses_department_number_semester"
ON "courses" ("department", "number", "semester");

CREATE INDEX "courses_semester_id"
ON "courses" ("semester", "id");

CREATE INDEX "courses_semester_title"
ON "courses" ("semester", "title");


-- satisfies
CREATE INDEX "satisfies_course_id"
ON "satisfies" ("course_id");

CREATE INDEX "satisfies_requirement_id"
ON "satisfies" ("requirement_id");
