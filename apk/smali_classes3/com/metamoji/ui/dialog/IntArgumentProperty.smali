.class public final Lcom/metamoji/ui/dialog/IntArgumentProperty;
.super Lcom/metamoji/ui/dialog/ArgumentProperty;
.source "NtDialogArgument.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/dialog/ArgumentProperty<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\r\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/IntArgumentProperty;",
        "Lcom/metamoji/ui/dialog/ArgumentProperty;",
        "",
        "argument",
        "Landroid/os/Bundle;",
        "name",
        "",
        "defValue",
        "<init>",
        "(Landroid/os/Bundle;Ljava/lang/String;I)V",
        "getDefValue",
        "()I",
        "set",
        "",
        "value",
        "get",
        "()Ljava/lang/Integer;",
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
.field private final defValue:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "argument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ArgumentProperty;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput p3, p0, Lcom/metamoji/ui/dialog/IntArgumentProperty;->defValue:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/IntArgumentProperty;-><init>(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/dialog/IntArgumentProperty;->defValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getDefValue()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/ui/dialog/IntArgumentProperty;->defValue:I

    return v0
.end method

.method public set(I)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->getArgument()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/IntArgumentProperty;->set(I)V

    return-void
.end method
