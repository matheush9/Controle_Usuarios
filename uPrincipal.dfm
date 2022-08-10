inherited frmPrincipal: TfrmPrincipal
  Caption = 'Principal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Visible = False
  end
  inherited CrudBarPanel: TPanel
    Visible = False
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 53
    Width = 555
    Height = 445
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 0
    ExplicitHeight = 498
    DesignSize = (
      555
      445)
    object Label1: TLabel
      Left = 92
      Top = 184
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
  end
end
