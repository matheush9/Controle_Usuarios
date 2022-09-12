unit uControleComponentes;

interface

uses System.Classes, Vcl.Forms, Vcl.Controls, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, Vcl.Buttons;

type
  TControles = class
  private
  public
    class procedure EnableComponents(Form: TForm;
      AClassArr: Array of TClass; isEnabled: Boolean);

    class procedure ControlarSetas(BtnNext,
BtnPrior: TSpeedButton; DataSource: TDataSource);

    class procedure ControlarDel(BtnDel: TSpeedButton;
     DataSource: TDataSource);

    class procedure CrudInInsert(BtnCancelar, BtnGravar: TSpeedButton);

    class procedure CrudInRead(BtnIncluir, BtnConsultar,
    BtnEditar: TSpeedButton);
  end;

implementation

{ TControles  }

class procedure TControles.ControlarDel(BtnDel: TSpeedButton;
     DataSource: TDataSource);
begin
  if DataSource.Dataset.RecordCount > 0 then
    BtnDel.Enabled := true
  else
    BtnDel.Enabled := false;
end;

class procedure TControles.ControlarSetas(BtnNext,
BtnPrior: TSpeedButton; DataSource: TDataSource);

begin
  if DataSource.DataSet.RecordCount > 0 then
  begin
    BtnNext.Enabled := true;
    BtnPrior.Enabled := true;

    if DataSource.DataSet.Eof = true then
    begin
      BtnNext.Enabled := false;
      BtnPrior.Enabled := true;
    end

    else if DataSource.DataSet.Bof = true then
    begin
      BtnNext.Enabled := true;
      BtnPrior.Enabled := false;
    end;

  end;
end;

class procedure TControles.CrudInInsert(BtnCancelar,
  BtnGravar: TSpeedButton);
begin
  BtnGravar.Enabled := true;
  BtnCancelar.Enabled := true;
end;

class procedure TControles.CrudInRead(BtnIncluir, BtnConsultar,
  BtnEditar: TSpeedButton);
begin
  BtnIncluir.Enabled := true;
  BtnEditar.Enabled := true;
  BtnConsultar.Enabled := true;
end;

class procedure TControles.EnableComponents(Form: TForm;
  AClassArr: Array of TClass; isEnabled: Boolean);
var
  I: Integer;
  K: Integer;
begin
  for I := 0 to Form.ComponentCount - 1 do
  begin
    for K := Low(AClassArr) to High(AClassArr) do
    begin
      if (Form.Components[I] is AClassArr[K]) then
         (Form.Components[I] as TControl).Enabled := isEnabled;
    end;
  end;
end;

end.
