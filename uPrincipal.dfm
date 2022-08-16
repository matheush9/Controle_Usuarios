inherited frmPrincipal: TfrmPrincipal
  ClientHeight = 485
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 432
    Visible = False
    ExplicitHeight = 432
    inherited TabSheet1: TTabSheet
      ExplicitHeight = 404
      inherited MainPanel: TPanel
        Height = 404
        ExplicitHeight = 404
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitHeight = 404
      inherited DBGrid1: TDBGrid
        Height = 404
      end
    end
  end
  inherited CrudBarPanel: TPanel
    Visible = False
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 53
    Width = 555
    Height = 432
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      555
      432)
    object Label1: TLabel
      Left = 92
      Top = 123
      Width = 363
      Height = 85
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Um nome legal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Segoe Print'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 400
      Width = 553
      Height = 31
      Panels = <
        item
          Text = 'USU'#193'RIO:'
          Width = 50
        end>
    end
  end
  inherited DataSourceCRUD: TDataSource
    Enabled = False
    Left = 472
  end
end
