.class public Lcom/metamoji/lib/dialog/UtAlertDialog;
.super Lcom/metamoji/lib/dialog/UtMessageBox;
.source "UtAlertDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00080\u0005J\u0008\u0010\u000c\u001a\u00020\u0008H\u0014J\u0008\u0010\r\u001a\u00020\u0008H\u0014R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtAlertDialog;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "<init>",
        "()V",
        "fnCreateView",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "fnCreateBuilder",
        "Landroid/app/AlertDialog$Builder;",
        "viewCreator",
        "fn",
        "builderCreator",
        "createAlertBuilder",
        "getAlertBuilder",
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
.field private fnCreateBuilder:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;",
            "+",
            "Landroid/app/AlertDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private fnCreateView:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    return-void
.end method


# virtual methods
.method public final builderCreator(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/dialog/UtAlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;",
            "+",
            "Landroid/app/AlertDialog$Builder;",
            ">;)",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtAlertDialog;->fnCreateBuilder:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method protected createAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtAlertDialog;->fnCreateBuilder:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected getAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;->getAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtAlertDialog;->fnCreateView:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-object v0
.end method

.method public final viewCreator(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/dialog/UtAlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lcom/metamoji/lib/dialog/UtAlertDialog;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtAlertDialog;->fnCreateView:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
