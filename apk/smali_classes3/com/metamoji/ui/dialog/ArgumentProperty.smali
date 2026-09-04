.class public abstract Lcom/metamoji/ui/dialog/ArgumentProperty;
.super Ljava/lang/Object;
.source "NtDialogArgument.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0010J\u000f\u0010\u0011\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u0012R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/ArgumentProperty;",
        "T",
        "",
        "argument",
        "Landroid/os/Bundle;",
        "key",
        "",
        "<init>",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "getArgument",
        "()Landroid/os/Bundle;",
        "getKey",
        "()Ljava/lang/String;",
        "set",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "get",
        "()Ljava/lang/Object;",
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


# instance fields
.field private final argument:Landroid/os/Bundle;

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "argument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ArgumentProperty;->argument:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ArgumentProperty;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getArgument()Landroid/os/Bundle;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ArgumentProperty;->argument:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ArgumentProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public abstract set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
