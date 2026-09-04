.class public final Lcom/metamoji/ui/dialog/NtDialog$dummyDialogInterface$1;
.super Ljava/lang/Object;
.source "NtDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/metamoji/ui/dialog/NtDialog$dummyDialogInterface$1",
        "Landroid/content/DialogInterface;",
        "cancel",
        "",
        "dismiss",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 349
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const-string/jumbo v2, "this is a dummy instance."

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 352
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const-string/jumbo v2, "this is a dummy instance."

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method
