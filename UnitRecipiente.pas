unit UnitRecipiente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmRecipiente = class(TForm)
    LytToolbar: TLayout;
    LblTitle: TLabel;
    ImgBack: TImage;
    lytFoto: TLayout;
    imgFoto: TImage;
    lblNome: TLabel;
    Layout1: TLayout;
    lblUnidade: TLabel;
    Label1: TLabel;
    rectRodape: TRectangle;
    Layout2: TLayout;
    imgMais: TImage;
    imgMenos: TImage;
    lblQtde: TLabel;
    btnAddCart: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecipiente: TFrmRecipiente;

implementation

{$R *.fmx}

uses UnitPrincipal;

end.
