@EndUserText.label: 'Student business object'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_RAP_STUDENT
  as select from zrap_student
{
  key student_uuid    as StudentUUID,
      student_number  as StudentNumber,
      first_name      as FirstName,
      last_name       as LastName,
      email           as Email,
      enrollment_date as EnrollmentDate,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
}
