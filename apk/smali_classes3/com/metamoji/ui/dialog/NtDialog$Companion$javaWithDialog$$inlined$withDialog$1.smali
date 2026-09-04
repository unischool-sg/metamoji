.class public final Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;
.super Ljava/lang/Object;
.source "NtDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialog$Companion;->javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialog.kt\ncom/metamoji/ui/dialog/NtDialog$Companion$withDialog$1\n*L\n1#1,461:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fn:Lkotlin/jvm/functions/Function1;

.field final synthetic $tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;->$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;->$fn:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;->invoke(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;->$tag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    instance-of v0, p1, Lcom/metamoji/lib/dialog/UtDialog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    .line 443
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$Companion$javaWithDialog$$inlined$withDialog$1;->$fn:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
