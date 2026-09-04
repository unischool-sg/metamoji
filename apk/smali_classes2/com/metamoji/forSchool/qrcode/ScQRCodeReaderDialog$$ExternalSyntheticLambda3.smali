.class public final synthetic Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$10(Ljava/util/List;I)V

    return-void
.end method
