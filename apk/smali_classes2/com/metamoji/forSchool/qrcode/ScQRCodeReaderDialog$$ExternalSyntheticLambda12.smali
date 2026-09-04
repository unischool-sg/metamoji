.class public final synthetic Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$11(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
