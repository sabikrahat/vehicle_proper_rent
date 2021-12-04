class BusDetails {
  final String uid;
  final String busName;
  final String busNumber;
  final String imgPath;

  BusDetails({
    required this.uid,
    required this.busName,
    required this.busNumber,
    required this.imgPath,
  });
}

// 95f9dfcf-da8f-4a32-90d7-349da8f96bd4

// daaacf63-5ecd-4268-8262-01039ccdd83c

// eed2a4d2-6735-40fd-a072-a84b773f834a

// 681ef770-130c-4962-9132-0df91e66abb5

// 8c21aa00-f935-44d4-91d8-3818ff0d4758

// f2af9ea6-3652-45b4-85a3-3baf1db9115c


List<BusDetails> busDetails = [
  BusDetails(
    uid: '95f9dfcf-da8f-4a32-90d7-349da8f96bd4',
    busName: 'BRTC', 
    busNumber: 'Dhaka Metro-Ka 1505-67',
    imgPath: 'assets/images/bus/brtc.png',
  ),
  BusDetails(
    uid: 'daaacf63-5ecd-4268-8262-01039ccdd83c',
    busName: 'Alif Poribohon',
    busNumber: 'Dhaka Metro-Kha 1506-68',
    imgPath: 'assets/images/bus/alif.png',
  ),
  BusDetails(
    uid: 'eed2a4d2-6735-40fd-a072-a84b773f834a',
    busName: 'Projapoti',
    busNumber: 'Dhaka Metro-Ga 1478-11',
    imgPath: 'assets/images/bus/projapoti.png',
  ),
  BusDetails(
    uid: '681ef770-130c-4962-9132-0df91e66abb5',
    busName: 'Mirpur Link Service',
    busNumber: 'Dhaka Metro-Gha 1124-96',
    imgPath: 'assets/images/bus/mirpur_link.png',
  ),
  BusDetails(
    uid: '8c21aa00-f935-44d4-91d8-3818ff0d4758',
    busName: 'Tetuliya',
    busNumber: 'Dhaka Metro-Cha 1625-01',
    imgPath: 'assets/images/bus/tetuliya.png',
  ),
  BusDetails(
    uid: 'f2af9ea6-3652-45b4-85a3-3baf1db9115c',
    busName: 'Moumita',
    busNumber: 'Dhaka Metro-Ka 1926-37',
    imgPath: 'assets/images/bus/moumita.jpg',
  ),
];
