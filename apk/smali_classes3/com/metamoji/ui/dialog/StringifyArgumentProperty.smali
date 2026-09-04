.class public abstract Lcom/metamoji/ui/dialog/StringifyArgumentProperty;
.super Lcom/metamoji/ui/dialog/ArgumentProperty;
.source "NtDialogArgument.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/ui/dialog/ArgumentProperty<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010J\u000f\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/StringifyArgumentProperty;",
        "T",
        "Lcom/metamoji/ui/dialog/ArgumentProperty;",
        "argument",
        "Landroid/os/Bundle;",
        "name",
        "",
        "defValue",
        "<init>",
        "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V",
        "getDefValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "set",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "get",
        "stringify",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "parse",
        "string",
        "(Ljava/lang/String;)Ljava/lang/Object;",
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
.field private final defValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "argument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ArgumentProperty;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->defValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->defValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDefValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->defValue:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/StringifyArgumentProperty;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract stringify(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
