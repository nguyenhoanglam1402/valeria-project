class MedicalRecord {
  bool kidneyIssue = false;
  bool diabetesIssue = false;
  bool highBloodPressureIssue = false;
  bool smokingIssue = false;
  bool drinkingIssue = false;
  bool depressionIssue = false;

  MedicalRecord(
      {bool kidney, bool diabetes,
        bool highBloodPressure, bool smoking,
        bool drinking, bool depression
      }) {
    this.kidneyIssue = kidney;
    this.diabetesIssue = diabetes;
    this.highBloodPressureIssue = highBloodPressure;
    this.smokingIssue = smoking;
    this.drinkingIssue = drinking;
    this.depressionIssue = depression;
  }
}