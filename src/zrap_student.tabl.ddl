@EndUserText.label: 'Student records'
@AbapCatalog.enhancement.category: #NOT_EXTENSIBLE
@AbapCatalog.tableCategory: #TRANSPARENT
@AbapCatalog.deliveryClass: #A
@AbapCatalog.dataMaintenance: #RESTRICTED
define table zrap_student {
  key client            : abap.clnt not null;
  key student_uuid      : sysuuid_x16 not null;
  student_number        : abap.char(12);
  first_name            : abap.char(40);
  last_name             : abap.char(40);
  email                 : abap.char(100);
  enrollment_date       : abap.dats;
  local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
