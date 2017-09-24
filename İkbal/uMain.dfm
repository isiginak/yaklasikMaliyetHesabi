object frmMain: TfrmMain
  Left = 529
  Top = 246
  Width = 579
  Height = 468
  Caption = 'frmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 14
  object btnDosya: TButton
    Left = 18
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Dosya'
    TabOrder = 0
    OnClick = btnDosyaClick
  end
  object cxPageControl1: TcxPageControl
    Left = 11
    Top = 16
    Width = 533
    Height = 344
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 340
    ClientRectLeft = 4
    ClientRectRight = 529
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 525
        Height = 315
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = UniDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 58
        Width = 32
        Height = 14
        Caption = 'Label1'
      end
      object Edit1: TEdit
        Left = 93
        Top = 52
        Width = 121
        Height = 22
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      object CheckBox1: TCheckBox
        Left = 48
        Top = 66
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
      end
      object RadioButton1: TRadioButton
        Left = 47
        Top = 95
        Width = 113
        Height = 17
        Caption = 'RadioButton1'
        TabOrder = 1
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 3
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 508
    Top = 369
    object miYeni: TMenuItem
      Caption = 'Yeni'
    end
    object miDuzelt: TMenuItem
      Caption = 'D'#252'zelt'
    end
    object miSil: TMenuItem
      Caption = 'Sil'
    end
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 64
    Top = 138
  end
  object UniQuery2: TUniQuery
    Connection = UniConnection1
    Left = 141
    Top = 142
  end
  object UniQuery3: TUniQuery
    Connection = UniConnection1
    Left = 210
    Top = 142
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 67
    Top = 199
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    Left = 140
    Top = 202
  end
  object UniDataSource3: TUniDataSource
    DataSet = UniQuery3
    Left = 216
    Top = 201
  end
  object UniConnection1: TUniConnection
    Left = 65
    Top = 86
  end
end
