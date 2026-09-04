.class public final Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;
.super Ljava/lang/Object;
.source "NtDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialogTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialogTask.kt\ncom/metamoji/ui/dialog/NtDialogTask$showDialog$1$d$1\n*L\n1#1,30:1\n*E\n"
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
.field final synthetic $dialog:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ")",
            "Lcom/metamoji/lib/dialog/UtDialog;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;->invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    return-object p1
.end method
