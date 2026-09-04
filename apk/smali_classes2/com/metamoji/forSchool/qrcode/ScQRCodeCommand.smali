.class public Lcom/metamoji/forSchool/qrcode/ScQRCodeCommand;
.super Ljava/lang/Object;
.source "ScQRCodeCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleDisplayQRCode(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtUnitController;

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    check-cast p0, Lcom/metamoji/un/web/UnWebUnit;

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getRequestURL()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->extractText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 25
    invoke-static {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->showQRCode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static handleQRCodeReader()V
    .locals 2

    .line 31
    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;-><init>()V

    .line 32
    const-string v1, "ScQRCodeReaderDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
