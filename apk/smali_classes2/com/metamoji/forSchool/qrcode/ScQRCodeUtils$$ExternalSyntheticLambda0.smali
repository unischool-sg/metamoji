.class public final synthetic Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->lambda$showQRCode$0(Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
