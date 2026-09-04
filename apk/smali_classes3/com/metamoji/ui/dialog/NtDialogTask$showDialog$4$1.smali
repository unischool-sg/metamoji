.class public final Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;
.super Ljava/lang/Object;
.source "NtDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialogTask;->showDialog(Landroid/view/View;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialogTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialogTask.kt\ncom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "no view in dialog."

    return-object v0
.end method
