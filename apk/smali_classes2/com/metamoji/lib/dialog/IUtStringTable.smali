.class public interface abstract Lcom/metamoji/lib/dialog/IUtStringTable;
.super Ljava/lang/Object;
.source "UtStandardString.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/IUtStringTable$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0011\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0097\u0002\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/IUtStringTable;",
        "",
        "resId",
        "",
        "type",
        "Lcom/metamoji/lib/dialog/UtStandardString;",
        "get",
        "str",
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


# direct methods
.method public static synthetic access$get$jd(Lcom/metamoji/lib/dialog/IUtStringTable;Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/IUtStringTable;->get(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public get(Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 1

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0, p1}, Lcom/metamoji/lib/dialog/IUtStringTable;->resId(Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p1

    return p1
.end method

.method public abstract resId(Lcom/metamoji/lib/dialog/UtStandardString;)I
.end method
