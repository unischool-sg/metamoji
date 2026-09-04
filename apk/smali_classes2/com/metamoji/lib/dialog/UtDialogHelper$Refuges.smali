.class final Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;
.super Ljava/lang/Object;
.source "UtDialogHelper.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Refuges"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogHelper.kt\ncom/metamoji/lib/dialog/UtDialogHelper$Refuges\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1915#2,2:213\n1915#2,2:215\n*S KotlinDebug\n*F\n+ 1 UtDialogHelper.kt\ncom/metamoji/lib/dialog/UtDialogHelper$Refuges\n*L\n114#1:213,2\n121#1:215,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;",
        "Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;",
        "list",
        "",
        "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
        "<init>",
        "(Ljava/util/List;)V",
        "getList",
        "()Ljava/util/List;",
        "dismiss",
        "",
        "restore",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;->list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;

    .line 114
    invoke-interface {v1}, Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;->list:Ljava/util/List;

    return-object v0
.end method

.method public restore(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;->list:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 215
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;->restore(Landroidx/fragment/app/FragmentTransaction;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 124
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
