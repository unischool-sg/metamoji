.class public final Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker$Contract;
.super Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;
.source "UtOpenReadOnlyMultiFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;
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
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker$Contract;",
        "Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;)V",
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
.field final synthetic this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 31
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker$Contract;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker$Contract;->this$0:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;->prepareChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
