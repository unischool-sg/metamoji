.class public final Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;
.super Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;
.source "UtCreateFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Contract"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;",
        "Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;)V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    const-string p1, "*/*"

    invoke-direct {p0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->getMimeType()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->prepareChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
