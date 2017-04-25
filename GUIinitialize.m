function faces=GUIinitialize(handles)

%% Set Face Colors
faces = [
    Color(handles.w111.BackgroundColor),Color(handles.w121.BackgroundColor),Color(handles.w131.BackgroundColor);
    Color(handles.w211.BackgroundColor),Color(handles.w221.BackgroundColor),Color(handles.w231.BackgroundColor);
    Color(handles.w311.BackgroundColor),Color(handles.w321.BackgroundColor),Color(handles.w331.BackgroundColor)
];
faces(:,:,2) = [
    Color(handles.r112.BackgroundColor),Color(handles.r122.BackgroundColor),Color(handles.r132.BackgroundColor);
    Color(handles.r212.BackgroundColor),Color(handles.r222.BackgroundColor),Color(handles.r232.BackgroundColor);
    Color(handles.r312.BackgroundColor),Color(handles.r322.BackgroundColor),Color(handles.r332.BackgroundColor)
];
faces(:,:,3) = [
    Color(handles.g113.BackgroundColor),Color(handles.g123.BackgroundColor),Color(handles.g133.BackgroundColor);
    Color(handles.g213.BackgroundColor),Color(handles.g223.BackgroundColor),Color(handles.g233.BackgroundColor);
    Color(handles.g313.BackgroundColor),Color(handles.g323.BackgroundColor),Color(handles.g333.BackgroundColor)
];
faces(:,:,4) = [
    Color(handles.y114.BackgroundColor),Color(handles.y124.BackgroundColor),Color(handles.y134.BackgroundColor);
    Color(handles.y214.BackgroundColor),Color(handles.y224.BackgroundColor),Color(handles.y234.BackgroundColor);
    Color(handles.y314.BackgroundColor),Color(handles.y324.BackgroundColor),Color(handles.y334.BackgroundColor)
];
faces(:,:,5) = [
    Color(handles.o115.BackgroundColor),Color(handles.o125.BackgroundColor),Color(handles.o135.BackgroundColor);
    Color(handles.o215.BackgroundColor),Color(handles.o225.BackgroundColor),Color(handles.o235.BackgroundColor);
    Color(handles.o315.BackgroundColor),Color(handles.o325.BackgroundColor),Color(handles.o335.BackgroundColor)
];
faces(:,:,6) = [
    Color(handles.b116.BackgroundColor),Color(handles.b126.BackgroundColor),Color(handles.b136.BackgroundColor);
    Color(handles.b216.BackgroundColor),Color(handles.b226.BackgroundColor),Color(handles.b236.BackgroundColor);
    Color(handles.b316.BackgroundColor),Color(handles.b326.BackgroundColor),Color(handles.b336.BackgroundColor)
];
