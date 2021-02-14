object frmSaveDocDetails: TfrmSaveDocDetails
  Left = 529
  Top = 265
  AlphaBlendValue = 245
  BorderStyle = bsDialog
  Caption = 'SpeediDocsMail  Save'
  ClientHeight = 680
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000888888880000000000
    088888888888888888888880000088888888888888888888887CC88000008888
    88888888887CCCCCCCCCC87800008888887CCCCCCCCCCCC8FFFFFF7780000CCC
    CCCCCCC8FFFFFFFF8CCC7FF878000CC7FFFFFFFFF8CCCCCCCCCC77FFF7800000
    F8CCCCCCCCCCCC8FFFFFF77FFF770000CCCCCC8FFFFFFFF7CCC8FF77FFF70000
    000FFFF8CCCCCCCCCCC77FF870000000000CCCCCCCCC8FFFFFFF770000000000
    000C7FFFFFFFFF7CCC7FF700000000000000008CCCCCCCCCCC77000000000000
    000000CCCCC8FFFFFFF700000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF800001F0000
    001F0000000F000000078000000380000001F0000000F0000000FE000007FE00
    003FFE00003FFFC000FFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000008
    888888800000888888888888000088888887CC880000CCCCCCCCCC878000CCCC
    8FFFFFF77800FFFFF8CCC7FF8780CCCCCCCCC77FFF78CCC8FFFFFF77FFF7FFFF
    7CCC8FF77FFFCCCCCCCC77FF8700C8FFFFFFF7700000FFF7CCC7FF700000CCCC
    CCC7700000008FFFFFFF700000000000000000000000FFFF0000E01F0000000F
    0000000F00000007000000030000000100000000000000000000000000000003
    0000001F0000001F0000007F0000007F0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 661
    Width = 528
    Height = 19
    BorderWidth = 2
    Panels = <
      item
        Width = 340
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 528
    Height = 661
    Align = alClient
    ParentBackground = True
    TabOrder = 1
    Transparent = True
    AutoSize = True
    object Label7: TLabel
      Left = 115
      Top = 41
      Width = 402
      Height = 26
      AutoSize = False
      ShowAccelChar = False
      WordWrap = True
    end
    object neUnits: TcxSpinEdit
      Left = 79
      Top = 482
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Value = 1
      Width = 425
    end
    object memoTimeNarration: TcxMemo
      Left = 79
      Top = 433
      Enabled = False
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Height = 43
      Width = 425
    end
    object cmbTasks: TcxLookupComboBox
      Left = 79
      Top = 406
      Enabled = False
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListSource = dmSaveDoc.dsScaleCost
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 425
    end
    object btnSave: TBitBtn
      Left = 159
      Top = 623
      Width = 102
      Height = 26
      Caption = '&Save'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AB4F4F00964F4C00AB4F4F00C6C4C600C6C4C600C6C4C600C6C4C600C6C4
        C600C4C4C400AB4F4F00AB4F4F00AB4F4F00FF00FF00FF00FF00FF00FF00B584
        7400AB4F4F00CD676400964F4C00C3A2A900C49C9400DCDADB00FFFCFF00E9EA
        E900DCDADB0096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
        7400CD676400CD676400964F4C00C3B5B400AB4F4F00C2907D00C4C4C400FFFC
        FF00E9EAE90096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
        7400CD676400CD6764009B4F5400DBCBC70096363500AB4F4F00AE837A00C6C4
        C600FFFCFF0096363500BC6B6D00CD676400964F4C00FF00FF00FF00FF00B584
        7400CD676400CD6764009B4F5400DBCBC700DBCBC700DBCBC700C3B5B400C6C4
        C600DCDADB0096363500AB4F4F00CD676400964F4C00FF00FF00FF00FF00B584
        7400CD676400CD676400BC6B6D00C2907D00C2907D00C2907D00C2907D00BC6B
        6D00FF618300AB4F4F00CD676400CD676400964F4C00FF00FF00FF00FF00B584
        7400CD676400CD676400CD676400CD676400CD676400CD676400CD676400CD67
        6400CD676400CD676400CD676400CD676400964F4C00FF00FF00FF00FF00B584
        7400CE676D00FF618300FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5AC00FFA5
        AC00FFA5AC00FF618300AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
        7400CD676400964F4C00F6F3F600F6F3F600FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFA5AC00CD676400CE676D00964F4C00FF00FF00FF00FF00B584
        7400CE676D00AB4F4F00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
        C600F6F3F600FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
        7400CE676D00AB4F4F00F6F3F600F6F3F600F6F3F600F6F3F600FFFFFF00FFFF
        FF00FFFFFF00FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
        7400CE676D00964F4C00F6F3F600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
        C600F6F3F600FFA5AC00BC6B6D00CE676D00964F4C00FF00FF00FF00FF00B584
        7400CE676D00AB4F4F00F6F3F600F6F3F600F6F3F600F6F3F600F6F3F600F6F3
        F600FFFFFF00FFA5AC00AB4F4F00CE676D00964F4C00FF00FF00FF00FF00B584
        7400964F4C0096363500C6C4C600C6C4C600C6C4C600C6C4C600C6C4C600C6C4
        C600C6C4C600FF61830096363500964F4C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 20
      OnClick = btnSaveClick
    end
    object btnClose: TBitBtn
      Left = 267
      Top = 623
      Width = 101
      Height = 26
      Caption = '&Cancel'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00F3F3F30CE7E7E718F2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F5F5F50AE9E9E916FFFFFF00FFFFFF00F3F3
        F30CB0B0B04F6E6E6E919B9B9B64EFEFEF10FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFEFE01E4E4E41BA7A7A7589090906FE9E9E916FFFFFF00907C
        EB832900DFFF3E28A5D76565659AC9C9C936FCFCFC03FFFFFF00FFFFFF00FFFF
        FF00FCFCFC03D5D5D52A6150B2AF2D07D8F8A7A7A758F5F5F50AFFFFFF00BBAF
        F4502900DFFF300ADBF5524E69B17F7F7F80DDDDDD22FFFFFF00FFFFFF00FCFC
        FC03C7C5D23A4529C2D62900DFFF7C6BCD94F0F0F00FFFFFFF00FFFFFF00FFFF
        FF008670ED8F2900DFFF3C1CD1E35F5F5FA09494946BE1E1E11EFCFCFC03C7C5
        D23A3918CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF007960EB9F2900DFFF5138C2C76464649B9292926DB6B4C14B3918
        CDE72D07D8F8A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF007960EB9F2900DFFF5037C2C852505DAF3312C7ED2C06
        D6F9A39CC563F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00785FE9A02900DFFF2C06D6F92B05D5FA6A62
        8B9DDADADA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FCFCFC03C7C5D23A2E08D9F72900DFFF472BC3D47474
        748B9191916ED5D5D52AF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFCFC03C7C5D23A3918CDE72D07D8F8705CCBA3350FDFF0593D
        D5C27C7A88858585857AC3C3C33CF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F9F9F906C7C5D23A3918CDE72900DFFF8A80B87FF0F0F00FD6CFF830431F
        E2E04928DDD779729C8D7C7C7C83B3B3B34CF5F5F50AFFFFFF00FFFFFF00FBFB
        FB04BBB9C7463817CCE82900DFFF7263B69CEAEAEA15FFFFFF00FFFFFF00F1EF
        FC105E40E7BF340EDEF17B6EB39189898976DBDBDB24FCFCFC03FFFFFF00C5BE
        E7413817CCE82900DFFF5A46B5B9E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00937FEE802900DFFFCFCAE635FCFCFC03FFFFFF00FFFFFF00411D
        DFE22900DFFF4529C2D6D5D5D52AFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003610
        E1EF4D2CE1D3DFDDEB22FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 21
      OnClick = btnCloseClick
    end
    object cbPortalAccess: TCheckBox
      Left = 208
      Top = 287
      Width = 156
      Height = 17
      Caption = 'Client Portal Access'
      TabOrder = 10
    end
    object cbOverwriteDoc: TCheckBox
      Left = 11
      Top = 310
      Width = 506
      Height = 18
      Caption = 'Overwrite Current Document'
      TabOrder = 11
    end
    object cbLeaveDocOpen: TCheckBox
      Left = 11
      Top = 287
      Width = 191
      Height = 17
      Caption = 'Leave Document open after save'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object cbNewCopy: TCheckBox
      Left = 240
      Top = 15
      Width = 113
      Height = 16
      Caption = 'Create new copy'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object cmbPrecCategory: TcxLookupComboBox
      Left = 98
      Top = 127
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'NPRECCATEGORY'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmSaveDoc.dsPrecCategory
      EditValue = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 419
    end
    object cmbClassification: TcxLookupComboBox
      Left = 98
      Top = 154
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'NPRECCLASSIFICATION'
      Properties.ListColumns = <
        item
          FieldName = 'DESCR'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmSaveDoc.dsPrecClassification
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 419
    end
    object cmbAuthor: TcxLookupComboBox
      Left = 98
      Top = 260
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmSaveDoc.dsEmployee
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 419
    end
    object chkCreateTime: TCheckBox
      Left = 24
      Top = 383
      Width = 480
      Height = 17
      Caption = 'Create Time Sheet Entry'
      TabOrder = 13
      OnClick = chkCreateTimeClick
    end
    object txtDocName: TcxTextEdit
      Left = 98
      Top = 73
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 419
    end
    object edKeywords: TcxTextEdit
      Left = 98
      Top = 181
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 419
    end
    object memoPrecDetails: TcxMemo
      Left = 98
      Top = 208
      Properties.ClearKey = 46
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 46
      Width = 419
    end
    object btnEditMatter: TcxButtonEdit
      Left = 98
      Top = 11
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000010000000100403000000EDDDE2
            520000000373424954080808DBE14FE000000027504C5445FFFFFFFF9900FF99
            00FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF990080
            633F910000000D74524E5300334466778899AABBCCDDEEFFD17E4CC500000009
            7048597300000AF000000AF00142AC34980000002074455874536F6674776172
            65004D6163726F6D656469612046697265776F726B73204D58BB912A24000000
            3E49444154789C6360800113170108E388EB0208E300438B3110280019222E40
            3011C80083248603191D20B09DE1C01908208DB105C6009BEBE2E20C770500A3
            673AAFB9E89D040000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.OnButtonClick = btnEditMatterPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnExit = btnEditMatterExit
      OnKeyPress = btnEditMatterKeyPress
      Width = 136
    end
    object btnTxtDocPath: TcxButtonEdit
      Left = 98
      Top = 334
      Hint = 'Macros Available'
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00777777FF777777FFFFFFFF00FFFFFF00FFFFFF005F5F5FFF6666
            66FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6666
            66FF969696FF669999FF5F5F5FFFFFFFFF00FFFFFF003399CCFF3399CCFF3399
            CCFF0066CCFF006699FF006699FF006699FF006699FF006699FF336699FF9696
            96FF3399CCFF3399CCFF4D4D4DFFFFFFFF00FFFFFF003399CCFF3399CCFFCCFF
            FFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF66CCFFFF999999FF3399
            CCFF66CCFFFF006699FF336666FF777777FFFFFFFF003399CCFF3399CCFFCCFF
            FFFF99FFFFFF99CCCCFFCBCBCBFFC0C0C0FFB2B2B2FF90A9ADFF6699CCFF66CC
            FFFF66CCFFFF006699FF006699FF5F5F5FFFFFFFFF003399CCFF3399CCFF99CC
            FFFFCBCBCBFFEAEAEAFFF8F8F8FFFFFFCCFFFFECCCFFCCCC99FF99CCCCFF66CC
            FFFF99FFFFFF3399CCFF339999FF555555FFFFFFFF003399CCFF33CCCCFF3399
            CCFFF0CAA6FFFFFFFF00FFFFFF00F1F1F1FFFFECCCFFFFECCCFFC0C0C0FF99FF
            FFFF99FFFFFF66CCFFFF006699FF336666FF777777FF3399CCFF66CCFFFF3399
            CCFFF0CAA6FFF1F1F1FFF8F8F8FFFFFFCCFFFFECCCFFFFECCCFFCCCCCCFF99FF
            FFFF99FFFFFF66CCFFFF3399CCFF006699FF4D4D4DFF3399CCFF66CCFFFF3399
            CCFFF0CAA6FFFFFFCCFFFFFFCCFFFFECCCFFFFECCCFFFFECCCFFFFCCCCFFFFFF
            FF00FFFFFF0099CCFFFF66CCFFFF006699FF5F5F5FFF3399CCFF99FFFFFF66CC
            FFFF868686FFFFECCCFFFFECCCFFFFECCCFFF8F8F8FFDDDDDDFF6699CCFF3399
            CCFF3399CCFF3399CCFF3399CCFF006699FFFFFFFF003399CCFF99FFFFFF99FF
            FFFF99FFFFFFC0C0C0FFF0CAA6FFF0CAA6FFCBCBCBFFE3E3E3FFFFFFFF00FFFF
            FF00FFFFFF00006699FF777777FFFFFFFF00FFFFFF003399CCFFFFFFFF0099FF
            FFFF99FFFFFF99FFFFFF99FFFFFFFFFFFF003399CCFF3399CCFF3399CCFF3399
            CCFF3399CCFF0066CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF003399CCFFFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003399
            CCFF3399CCFF3399CCFF3399CCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Kind = bkGlyph
        end
        item
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = btnTxtDocPathPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 12
      Width = 419
    end
    object cmbFolder: TcxLookupComboBox
      Left = 98
      Top = 100
      Properties.KeyFieldNames = 'FOLDER_ID'
      Properties.ListColumns = <
        item
          FieldName = 'LPAD('#39'*'#39',2*(LEVEL-1),'#39'*'#39')||DESCR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmSaveDoc.dsMatterFolderList
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 419
    end
    object Memo1: TcxMemo
      Left = 11
      Top = 522
      Lines.Strings = (
        'Memo1')
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Edges = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clRed
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 17
      Height = 37
      Width = 506
    end
    object chkApplyToSameMatter: TcxCheckBox
      Left = 11
      Top = 565
      AutoSize = False
      Caption = 'Save all Emails to Matter selected'
      Properties.Alignment = taLeftJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
      Height = 25
      Width = 506
    end
    object lblProgress: TcxLabel
      Left = 11
      Top = 596
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 506
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      Locked = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Matter'
      Control = btnEditMatter
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbNewCopy
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Label7
      ControlOptions.AlignHorz = ahRight
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 402
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = txtDocName
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Category'
      Control = cmbPrecCategory
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Classification'
      Control = cmbClassification
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Keywords'
      Control = edKeywords
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Document Note'
      Control = memoPrecDetails
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Author'
      Control = cmbAuthor
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbLeaveDocOpen
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbPortalAccess
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbOverwriteDoc
      ControlOptions.AutoColor = True
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Document Path'
      Control = btnTxtDocPath
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroupTimeFields
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Narration'
      Control = memoTimeNarration
      ControlOptions.MinHeight = 21
      ControlOptions.MinWidth = 21
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroupTimeFields
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Units'
      Control = neUnits
      ControlOptions.MinHeight = 21
      ControlOptions.MinWidth = 21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroupTimeFields
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Task'
      Control = cmbTasks
      ControlOptions.MinHeight = 21
      ControlOptions.MinWidth = 21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnClose
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroupTime
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkCreateTime
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutGroupTime: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 12
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Folder'
      Control = cmbFolder
      ControlOptions.MinHeight = 19
      ControlOptions.MinWidth = 19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'lblMessage'
      CaptionOptions.Visible = False
      Control = Memo1
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 385
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutGroupTimeFields: TdxLayoutGroup
      Parent = dxLayoutGroupTime
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Enabled = False
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkApplyToSameMatter
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 485
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblProgress
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 485
      ControlOptions.ShowBorder = False
      Index = 15
    end
  end
  object ImageList1: TImageList
    Left = 197
    Top = 153
  end
  object BrowseDlg: TJvBrowseForFolderDialog
    Left = 411
    Top = 278
  end
end
