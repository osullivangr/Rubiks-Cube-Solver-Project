function changeGUI(faces,handles)
handles.w111.BackgroundColor=faces(1,1,1).getColor;
handles.w121.BackgroundColor=faces(1,2,1).getColor;
handles.w131.BackgroundColor=faces(1,3,1).getColor;
handles.w211.BackgroundColor=faces(2,1,1).getColor;
handles.w221.BackgroundColor=faces(2,2,1).getColor;
handles.w231.BackgroundColor=faces(2,3,1).getColor;
handles.w311.BackgroundColor=faces(3,1,1).getColor;
handles.w321.BackgroundColor=faces(3,2,1).getColor;
handles.w331.BackgroundColor=faces(3,3,1).getColor;

handles.r112.BackgroundColor=faces(1,1,2).getColor;
handles.r122.BackgroundColor=faces(1,2,2).getColor;
handles.r132.BackgroundColor=faces(1,3,2).getColor;
handles.r212.BackgroundColor=faces(2,1,2).getColor;
handles.r222.BackgroundColor=faces(2,2,2).getColor;
handles.r232.BackgroundColor=faces(2,3,2).getColor;
handles.r312.BackgroundColor=faces(3,1,2).getColor;
handles.r322.BackgroundColor=faces(3,2,2).getColor;
handles.r332.BackgroundColor=faces(3,3,2).getColor;

handles.g113.BackgroundColor=faces(1,1,3).getColor;
handles.g123.BackgroundColor=faces(1,2,3).getColor;
handles.g133.BackgroundColor=faces(1,3,3).getColor;
handles.g213.BackgroundColor=faces(2,1,3).getColor;
handles.g223.BackgroundColor=faces(2,2,3).getColor;
handles.g233.BackgroundColor=faces(2,3,3).getColor;
handles.g313.BackgroundColor=faces(3,1,3).getColor;
handles.g323.BackgroundColor=faces(3,2,3).getColor;
handles.g333.BackgroundColor=faces(3,3,3).getColor;

handles.y114.BackgroundColor=faces(1,1,4).getColor;
handles.y124.BackgroundColor=faces(1,2,4).getColor;
handles.y134.BackgroundColor=faces(1,3,4).getColor;
handles.y214.BackgroundColor=faces(2,1,4).getColor;
handles.y224.BackgroundColor=faces(2,2,4).getColor;
handles.y234.BackgroundColor=faces(2,3,4).getColor;
handles.y314.BackgroundColor=faces(3,1,4).getColor;
handles.y324.BackgroundColor=faces(3,2,4).getColor;
handles.y334.BackgroundColor=faces(3,3,4).getColor;

handles.o115.BackgroundColor=faces(1,1,5).getColor;
handles.o125.BackgroundColor=faces(1,2,5).getColor;
handles.o135.BackgroundColor=faces(1,3,5).getColor;
handles.o215.BackgroundColor=faces(2,1,5).getColor;
handles.o225.BackgroundColor=faces(2,2,5).getColor;
handles.o235.BackgroundColor=faces(2,3,5).getColor;
handles.o315.BackgroundColor=faces(3,1,5).getColor;
handles.o325.BackgroundColor=faces(3,2,5).getColor;
handles.o335.BackgroundColor=faces(3,3,5).getColor;

handles.b116.BackgroundColor=faces(1,1,6).getColor;
handles.b126.BackgroundColor=faces(1,2,6).getColor;
handles.b136.BackgroundColor=faces(1,3,6).getColor;
handles.b216.BackgroundColor=faces(2,1,6).getColor;
handles.b226.BackgroundColor=faces(2,2,6).getColor;
handles.b236.BackgroundColor=faces(2,3,6).getColor;
handles.b316.BackgroundColor=faces(3,1,6).getColor;
handles.b326.BackgroundColor=faces(3,2,6).getColor;
handles.b336.BackgroundColor=faces(3,3,6).getColor;

drawCube(faces,handles);
