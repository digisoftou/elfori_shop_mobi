class EventItem {
  final String date;
  final String format;
  final String city;
  final String description;
  final String speaker;
  final String speakerDetails;

  EventItem({
    required this.date,
    required this.format,
    required this.city,
    required this.description,
    required this.speaker,
    required this.speakerDetails,
  });
}

List<EventItem> eventsList = [
  EventItem(
    date: '13 лютого 11:00',
    format: 'Онлайн',
    city: 'Київ',
    description: 'Оглядовий семінарЖ філософія естетики шкіри обличчя та тіла, комплексні рішення сучасних проблем шкіри від професійного...',
    speaker: 'Вікторія білоус',
    speakerDetails: 'косметолог, біолог, найкращий косметолог 2023р',
  ),

];


