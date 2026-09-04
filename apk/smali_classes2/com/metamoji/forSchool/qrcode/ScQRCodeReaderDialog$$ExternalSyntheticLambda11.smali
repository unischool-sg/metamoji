.class public final synthetic Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda11;->f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda11;->f$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->startQRCodeCapture()V

    return-void
.end method
