unit SavedocDetails;

{************************************************************************
 AES 24/6/2018 added ability to search for matter based on description/client name/fileid ssame as search on insight.


*************************************************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  {Dialogs,} ComObj, StdCtrls, Menus, DB, ActnList,
  ActnMan, Outlook2010, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.Dialogs,
  cxClasses, cxLabel, cxCheckBox,
  cxButtonEdit, cxTextEdit, Vcl.Buttons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxMaskEdit, cxSpinEdit,
  dxLayoutControl, Vcl.ComCtrls, JvBaseDlg, JvBrowseFolder, System.ImageList,
  Vcl.ImgList;

const
     CUSTOMPROPS: array[0..10] of string = ('MatterNo','DocID','Prec_Category','Prec_Classification','Doc_Keywords','Doc_Precedent','Doc_FileName','Doc_Author','Saved_in_DB', 'Doc_Title','Portal_Access');

type
  TfrmSaveDocDetails = class(TForm)
    btnSave: TBitBtn;
    btnClose: TBitBtn;
    ImageList1: TImageList;
    cbPortalAccess: TCheckBox;
    cbOverwriteDoc: TCheckBox;
    cbLeaveDocOpen: TCheckBox;
    cbNewCopy: TCheckBox;
    StatusBar: TStatusBar;
    cmbPrecCategory: TcxLookupComboBox;
    cmbClassification: TcxLookupComboBox;
    cmbAuthor: TcxLookupComboBox;
    Label7: TLabel;
    neUnits: TcxSpinEdit;
    chkCreateTime: TCheckBox;
    txtDocName: TcxTextEdit;
    edKeywords: TcxTextEdit;
    memoTimeNarration: TcxMemo;
    memoPrecDetails: TcxMemo;
    cmbTasks: TcxLookupComboBox;
    btnEditMatter: TcxButtonEdit;
    btnTxtDocPath: TcxButtonEdit;
    BrowseDlg: TJvBrowseForFolderDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroupTime: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    cmbFolder: TcxLookupComboBox;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroupTimeFields: TdxLayoutGroup;
    Memo1: TcxMemo;
    dxLayoutItem22: TdxLayoutItem;
    chkApplyToSameMatter: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    lblProgress: TcxLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure rgStorageClick(Sender: TObject);
    procedure btnEditMatterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTxtDocPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cmbCategoryPropertiesInitPopup(Sender: TObject);
    procedure btnEditMatterExit(Sender: TObject);
    procedure dockbtnDefaultPathClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSaveAsPrecedentClick(Sender: TObject);
    procedure chkCreateTimeClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditMatterPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnEditMatterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    nMatter: integer;

    tmpFileName: string;
    FPrec_Category: string;
    tmpdir: string;
    FSavedInDB: string;
    FDocName: string;
    FPrec_Classification: string;
    FDoc_Keywords: string;
    FDoc_Precedent: string;
    FDoc_FileName: string;
    FDoc_Author: string;
    FEditing: boolean;
    FAppType: integer;
    FFileID: string;
    FOldFileID: string;
    FMailSubject: string;
    FReceivedDate: TDateTime;
    FadxLCID: integer;
    FromWord: boolean;
    FIMail: MailItem;
    FromExcel: boolean;
    FTimeNarration: string;
    FSentEmail: boolean;
    FFolder_ID: integer;
    FCategories: string;
    FProp: Outlook2010.UserProperty;
    FFileCount: integer;
    FFileProgress: integer;
//    procedure GetDetails;
    FbLoop: boolean;
    FileNumber: integer;
    bMatterFound: boolean;
    FDocList: Array of OleVariant;
    Procedure  ProcessFile;
  public
    { Public declarations }
    DocList: Array of MailItem;

    property DocName: string read FDocName write FDocName;
    property AppType: Integer read FAppType write FAppType;
    property MailSubject: string read FMailSubject write FMailSubject;
    property ReceivedDate: TDateTime read FReceivedDate write FReceivedDate;
    property LadxLCID: integer read FadxLCID write FadxLCID;
    property IMail: MailItem read FIMail write FIMail;
    property TimeNarration: string read FTimeNarration write FTimeNarration;
    property SentEmail: boolean read FSentEmail write FSentEmail default False;

    property dFileCount: integer read FFileCount write FFileCount;
    property dFileProgress: integer read FFileProgress write FFileProgress;
    property dLoop: boolean read FbLoop write FbLoop;

    procedure ProcessOK(Sender: TObject);
  end;

var
  frmSaveDocDetails: TfrmSaveDocDetails;

function ShowDocSave: Integer; StdCall;

implementation

uses
    MatterSearch, SaveDocFunc, ActiveX, OutlookUnit,
    SpeediDocsMail_IMPL, Office2010, SaveDoc;

{$R *.dfm}

function ShowDocSave:integer;
var
   frmSaveDocDetails: TfrmSaveDocDetails;
begin
//   Application.Handle := AHandle;
   frmSaveDocDetails := TfrmSaveDocDetails.Create(Application);
   try
      frmSaveDocDetails.ShowModal;
      Result := frmSaveDocDetails.nMatter;
   finally
      FreeAndNil(frmSaveDocDetails);
   end;
end;

procedure TfrmSaveDocDetails.btnCloseClick(Sender: TObject);
var
  Unknown: IUnknown;
  OLEResult: HResult;
  AMacro : string;
begin
   Close;
end;

procedure TfrmSaveDocDetails.FormShow(Sender: TObject);
var
   AMatter,
   ALastMatter : string;
   strArray    : TArray<String>;

begin
   cmbAuthor.EditValue := dmConnection.UserCode;
   FromWord := False;
   Memo1.Text := '';
   FFolder_ID := 0;

   if dFileCount > 1 then
   begin
      IMail := DocList[0];
      ReceivedDate := IMail.ReceivedTime;
   end;
   MailSubject := IMail.Subject;
   txtDocName.Text := MailSubject;

   if (dFileCount > 0) then
   begin
      lblProgress.Visible := True;
      lblProgress.Caption := 'Saving File ' + intToStr(dFileProgress+1) + ' of ' + intToStr(dFileCount);
   end
   else
   begin
      lblProgress.Visible := False;
      lblProgress.Caption := '';
   end;

   cbLeaveDocOpen.Checked := False;
   cmbAuthor.EditValue := dmConnection.UserCode;
   memoTimeNarration.Text := TimeNarration;
   FProp := nil;
   FCategories := FIMail.Categories;
   FProp := FIMail.UserProperties.Find('MATTER', True);
   if Assigned(Fprop) then
   begin
      AMatter := Fprop.Value;
      strArray     := AMatter.Split([',']);
      ALastMatter := strArray[0];
      with dmConnection.qryCheckEmail do
      begin
         Close;
         ParamByName('email_subject').AsString := FiMail.Subject;
         ParamByName('D_CREATE').AsDateTime := FiMail.ReceivedTime;
         ParamByName('fileid').AsString := ALastMatter;
         Open;
         if (FieldByName('rec_found').IsNull = False) then
            Memo1.Text := 'Email already saved to BHL Insight in matter(s): ' + AMatter
         else
            Memo1.Lines.Clear;
         Close;
      end;
   end
   else
   begin
       Memo1.Text := '';
   end;

   if (FSavedInDB = 'N') or (FSavedInDB = '')  then
   begin
      btnTxtDocPath.Text := SystemString('DRAG_DEFAULT_DIRECTORY');
   end;
end;


procedure TfrmSaveDocDetails.ProcessOK(Sender: TObject);
var
   DocSequence,
   lTask: string;
   cmbPrecCategoryKeyValue,
   cmbClassificationKeyValue, cmbFolderKeyValue: integer;
   I: Integer;
begin
   try
      btnTxtDocPath.Text := SystemString('DRAG_DEFAULT_DIRECTORY');
      screen.Cursor := crHourGlass;
      if (btnEditMatter.Text = '') then
      begin
         with Application do
         begin
            NormalizeTopMosts;
            MsgInfo('Please enter a Matter number.');
            RestoreTopMosts;
            exit;
         end;
      end;

      if (Memo1.Text <> '') then
      begin
         with Application do
         begin
            NormalizeTopMosts;
            if MsgAsk('Are you sure you want to file this email again?') = mrNo then
            begin
                RestoreTopMosts;
                exit;
            end;
         end;
      end;

      if btnTxtDocPath.Text <> '' then
      begin
         try
            if cmbAuthor.Text = '' then
            begin
               with Application do
               begin
                  NormalizeTopMosts;
                  MsgInfo('Please enter an Author.');
                  RestoreTopMosts;
                  exit;
               end;
            end;
            dmConnection.orsInsight.StartTransaction;
            dmConnection.qryMatterAttachments.Open;

            FEditing := False;
//            bUsePath := False;
            tmpdir := IncludeTrailingPathDelimiter(GetEnvironmentVariable('TMP'));

            if ((cbOverwriteDoc.Visible)  and
               (not cbOverwriteDoc.Checked)) then
            begin
               dmConnection.qryMatterAttachments.insert;
               dmConnection.qryMatterAttachments.ParamByName('docid').AsInteger := dmConnection.DocID;
            end
            else
            if (not cbOverwriteDoc.Visible) then
            begin
               dmConnection.qryMatterAttachments.Insert;
               dmConnection.qryMatterAttachments.ParamByName('docid').AsInteger := dmConnection.DocID;
            end
            else
            if (cbOverwriteDoc.Checked) then
            begin
               dmConnection.qryMatterAttachments.Edit;
               FEditing := True;
            end;

            if btnTxtDocPath.Text = '' then
               tmpFileName := txtDocName.Text
            else
               tmpFileName := btnTxtDocPath.Text;

            try
               if cmbPrecCategory.Text = '' then
                  cmbPrecCategoryKeyValue := -1
               else
                  cmbPrecCategoryKeyValue := cmbPrecCategory.EditValue;

               if cmbClassification.Text = '' then
                  cmbClassificationKeyValue := -1
               else
                  cmbClassificationKeyValue := cmbClassification.EditValue;

               if cmbFolder.Text = '' then
                  cmbFolderKeyValue := -1
               else
                  cmbFolderKeyValue := cmbFolder.EditValue;


               if (length(cmbTasks.Text) > 0) then
                 lTask := cmbTasks.EditValue;

               SaveOutlookMessage(DocSequence, 1,btnTxtDocPath.Text,
                           cbNewCopy.Checked, cbOverwriteDoc.Checked, btnEditMatter.Text,
                           cmbAuthor.EditValue, txtDocName.Text,
                           '','',
                           -1, cmbPrecCategoryKeyValue, cmbClassificationKeyValue, cmbFolderKeyValue,
                           memoPrecDetails.Text, edKeywords.Text,
                           ReceivedDate, IMail, True, dmConnection.DocID,
                           chkCreateTime.Checked, memoTimeNarration.Text,
                           neUnits.Value, SentEmail, lTask);

               dmConnection.orsInsight.Commit;
//               if (rgStorage.ItemIndex = 0) and (not cbLeaveDocOpen.Checked) then
//                  DeleteFile(tmpFileName);
            except
               raise;
            end;

         except
            dmConnection.orsInsight.Rollback;
         end;
         Self.Close;
      end
      else
      with Application do
      begin
         NormalizeTopMosts;
         MessageBox('Please enter a document name.','SpeediDocsMail',MB_OK+MB_ICONEXCLAMATION);
         RestoreTopMosts;
      end;
   finally
      screen.Cursor := crDefault;
   end;
end;

procedure TfrmSaveDocDetails.btnSaveClick(Sender: TObject);
var
   iLoop: integer;
begin
   dLoop :=  chkApplyToSameMatter.Checked;
   ProcessOK(Self);
   if (dFileCount = 1) or ((FileNumber+1) = dFileCount) then
      PostMessage(Self.Handle, WM_CLOSE,0 ,0)
   else if not (dloop) and (dFileCount > 1) then
   begin
       FileNumber := FileNumber +1;
       ProcessFile;
   end;
   if (dloop) then
   begin
     while (FileNumber + 1) < dFileCount do
     begin
        FileNumber := FileNumber +1;
        ProcessFile;
        ProcessOK(Self);
     end;
   end;
end;

Procedure  TfrmSaveDocDetails.ProcessFile;
var
   lDocName: string;
   x: integer;
begin
   IMail := DocList[FileNumber];
   MailSubject := IMail.Subject;
   txtDocName.Text := MailSubject;
   ReceivedDate := IMail.ReceivedTime;

   btnTxtDocPath.Text :=  lDocName;  //ExtractFileName(DocName);

 //  FOldDocName := DocName;

   if (Length(DocList) > 1) then
   begin
      chkApplyToSameMatter.Enabled := True;
   end;

   if (Length(DocList) > 0) then
   begin
      lblProgress.Visible := True;
      lblProgress.Caption := 'File ' + intToStr(FileNumber+1) + ' of ' + intToStr(dFileCount);
   end
   else
   begin
      lblProgress.Visible := False;
      lblProgress.Caption := '';
   end;
   cmbAuthor.EditValue := TableString('EMPLOYEE','USER_NAME',UpperCase(dmConnection.UserID), 'CODE');
   Application.ProcessMessages;

 //  frmSaveDocDetails.BringToFront;
//   frmSaveDocDetails.Activate;
//   SetForegroundWindow(frmSaveDocDetails.Handle);
end;



procedure TfrmSaveDocDetails.rgStorageClick(Sender: TObject);
begin
{   case rgStorage.ItemIndex of
      0: begin
            btnTxtDocPath.Visible := False;
            Self.Height := 275;
         end;
      1: begin}
            btnTxtDocPath.Visible := True;
            Self.Height := 307;
//         end;
//   end;
end;

procedure TfrmSaveDocDetails.btnEditMatterPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   frmMtrSearch: TfrmMtrSearch;
begin
   try
//      FreeAndNil(frmMtrSearch);
      frmMtrSearch := TfrmMtrSearch.Create(Application);
      if (frmMtrSearch.ShowModal = mrOK) then
      begin
         bMatterFound := True;
         btnEditMatter.Text := frmMtrSearch.tvMattersFILEID.EditValue;   // dmSaveDoc.qryMatters.FieldByName('fileid').AsString;   //  dmSaveDoc.qryMatters.FieldByName('fileid').AsString;
         nMatter := frmMtrSearch.tvMattersNMATTER.EditValue;  // dmSaveDoc.qryMatters.FieldByName('nmatter').AsInteger;
//         cmbAuthor.EditValue := TableString('MATTER','NMATTER',nMatter,'AUTHOR');
         FFileID := btnEditMatter.Text;
         cbOverwriteDoc.Enabled := (FOldFileID = FFileID);
         cbNewCopy.Visible := ((FOldFileID <> FFileID) and (FOldFileID <> ''));
         Label7.Caption := TableString('MATTER','NMATTER',nMatter,'SHORTDESCR');
         dmConnection.qryMatterFolderList.Close;
         dmConnection.qryMatterFolderList.ParamByName('nMatter').AsInteger := NMATTER;
         dmConnection.qryMatterFolderList.Open;
      end;
   finally
      FreeAndNil(frmMtrSearch);
   end;
end;

procedure TfrmSaveDocDetails.btnEditMatterPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
   lFoundFileID: string;
   nmatter: integer;
begin
   if string(DisplayValue) <> '' then
   begin
      dmConnection.FindMatter(lFoundFileID, nmatter, string(DisplayValue));
{      dmConnection.qryGetMatter.Close;
      dmConnection.qryGetMatter.ParamByName('FILEID').AsString := string(DisplayValue);
      dmConnection.qryGetMatter.Open;
      if dmConnection.qryGetMatter.Eof then
         MsgErr('Invalid Matter Number')
      else   }
      begin
         nMatter := dmConnection.qryGetMatter.FieldByName('NMATTER').AsInteger;
         FFileID := string(DisplayValue);
//         cmbAuthor.EditValue := TableString('MATTER','NMATTER',nMatter,'AUTHOR');
         cbOverwriteDoc.Enabled := (FOldFileID = FFileID);
         cbNewCopy.Visible := ((FOldFileID <> FFileID) and (FOldFileID <> ''));
      end;
   end;
end;

procedure TfrmSaveDocDetails.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmSaveDocDetails.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   dmConnection.tbDocGroups.Close;
   dmConnection.qryPrecClassification.Close;
   dmConnection.qryEmployee.Close;
   dmConnection.qryPrecCategory.Close;
   dmConnection.qryScaleCost.Close;
   dmConnection.qryMatterFolderList.Close;
//   dmConnection.orsInsight.Disconnect;
{   if Assigned(dmSaveDoc) then
   begin
      FreeAndNil(dmSaveDoc);
   end;  }
end;

procedure TfrmSaveDocDetails.FormCreate(Sender: TObject);
begin
   if (not Assigned(dmConnection)) then
      dmConnection := TdmSaveDoc.Create(Application);

   if dmConnection.orsInsight.Connected = False then
   begin
      try
         if (dmConnection.GetUserID = True) then
         begin
            cbOverWriteDoc.Visible := False;
 //            rgStorage.Enabled := (SystemString('DISABLE_SAVE_MODE') = 'N');
         end;
      except
         Exit;
      end;
   end;

   SetLength(DocList, 250);

   StatusBar.Panels[0].Text := 'Ver: '+ ReportVersion(SysUtils.GetModuleName(HInstance)) + ' (' +DateTimeToStr(FileDateToDateTime(FileAge(SysUtils.GetModuleName(HInstance))))+')';

   dmConnection.qryPrecClassification.Open;
   dmConnection.qryEmployee.Open;
   dmConnection.qryPrecCategory.Open;
   dmConnection.tbDocGroups.Open;
   dmConnection.qryScaleCost.Open;
   dmConnection.qryMatterFolderList.Open;
end;

procedure TfrmSaveDocDetails.btnTxtDocPathPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   case AButtonIndex of
      0: begin
            if BrowseDlg.Execute then
               btnTxtDocPath.Text := BrowseDlg.Directory
         end;
      1: btnTxtDocPath.Text := SystemString('DRAG_DEFAULT_DIRECTORY');
   end;
end;

procedure TfrmSaveDocDetails.cbSaveAsPrecedentClick(Sender: TObject);
begin
    btnTxtDocPath.Text := SystemString('DOC_DEFAULT_DIRECTORY');
end;

procedure TfrmSaveDocDetails.chkCreateTimeClick(Sender: TObject);
begin
   dxLayoutGroupTimeFields.Enabled := chkCreateTime.Checked;
end;

procedure TfrmSaveDocDetails.cmbCategoryPropertiesInitPopup(
  Sender: TObject);
begin
//   dmSavedoc.qryPrecCategory.Close;
//   dmSavedoc.qryPrecCategory.Open;
end;

procedure TfrmSaveDocDetails.btnEditMatterExit(Sender: TObject);
var
   lFileID,
   lFoundFileID: string;
   nmatter: integer;
begin
   if (string(btnEditMatter.Text) <> '') and (bMatterFound = False) then
   begin
      try
         lFileID := uppercase(trim(btnEditMatter.Text));
         dmConnection.LoadMatter(lFoundFileID, nmatter, lFileID);
         btnEditMatter.Text := lFoundFileID;
      finally
//      dmConnection.qryMatterFolderList.Close;
//      dmConnection.qryMatterFolderList.ParamByName('nMatter').AsInteger := nmatter;
//      dmConnection.qryMatterFolderList.Open;


{      dmConnection.qryGetMatter.Close;
      dmConnection.qryGetMatter.ParamByName('FILEID').AsString := string(btnEditMatter.Text);
      dmConnection.qryGetMatter.Open;
      if dmConnection.qryGetMatter.Eof then
         MsgErr('Invalid Matter Number')
      else     }
//      begin
//         nMatter := dmConnection.qryGetMatter.FieldByName('NMATTER').AsInteger;
         FFileID := lFileID;  //string(btnEditMatter.Text);
         Label7.Caption := TableString('MATTER','FILEID', FFileID,'SHORTDESCR');
//         cmbAuthor.EditValue := TableString('MATTER','NMATTER',nMatter,'AUTHOR');
         cbOverwriteDoc.Enabled := (FOldFileID = FFileID);
         cbNewCopy.Visible := ((FOldFileID = FFileID) and (FOldFileID = ''));
         dmConnection.qryMatterFolderList.Close;
         dmConnection.qryMatterFolderList.ParamByName('nMatter').AsInteger := NMATTER;
         dmConnection.qryMatterFolderList.Open;
         Self.ActiveControl := txtDocName;
         txtDocName.SetFocus;
      end;
   end;
end;

procedure TfrmSaveDocDetails.btnEditMatterKeyPress(Sender: TObject;
  var Key: Char);
var
   lFileID,
   lFoundFileID,
   sNewFileID: string;
   nmatter: integer;
begin
   if (key = #$D) then
   begin
      try
         bMatterFound := False;
         lFileID := uppercase(trim(btnEditMatter.Text));
         dmConnection.LoadMatter(lFoundFileID, nmatter, lFileID);
         btnEditMatter.Text := lFoundFileID;
      finally
         if (lFileId <> '') then
         begin
            bMatterFound := True;
            Label7.Caption := TableString('MATTER','NMATTER',nMatter,'SHORTDESCR');
            cbOverwriteDoc.Enabled := (FOldFileID = FFileID);
            cbNewCopy.Visible := ((FOldFileID = FFileID) and (FOldFileID = ''));
            dmConnection.qryMatterFolderList.Close;
            dmConnection.qryMatterFolderList.ParamByName('nMatter').AsInteger := NMATTER;
            dmConnection.qryMatterFolderList.Open;
            Self.ActiveControl := txtDocName;
            txtDocName.SetFocus;
         end;
      end;
//    btnEditMatter.ValidateEdit();
//      dmConnection.qryMatterFolderList.Closed;
//      dmConnection.qryMatterFolderList.ParamByName('nMatter').AsInteger := nmatter;
//      dmConnection.qryMatterFolderList.Open;
   end;
end;

procedure TfrmSaveDocDetails.dockbtnDefaultPathClick(Sender: TObject);
begin
   if (FromWord = False) and (FromExcel = False) then
      btnTxtDocPath.Text := SystemString('DRAG_DEFAULT_DIRECTORY')
   else
      btnTxtDocPath.Text := SystemString('DOC_DEFAULT_DIRECTORY');
end;



end.
