.class final Lcom/metamoji/lib/dialog/UtDialog$Refuge;
.super Ljava/lang/Object;
.source "UtDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Refuge"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog$Refuge;",
        "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
        "dialog",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialog;)V",
        "getDialog",
        "()Lcom/metamoji/lib/dialog/UtDialog;",
        "dismiss",
        "",
        "restore",
        "transaction",
        "Landroidx/fragment/app/FragmentTransaction;"
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
.field private final dialog:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$Refuge;->dialog:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$Refuge;->dialog:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    return-void
.end method

.method public final getDialog()Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$Refuge;->dialog:Lcom/metamoji/lib/dialog/UtDialog;

    return-object v0
.end method

.method public restore(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$Refuge;->dialog:Lcom/metamoji/lib/dialog/UtDialog;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method
