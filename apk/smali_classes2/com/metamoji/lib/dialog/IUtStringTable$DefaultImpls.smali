.class public final Lcom/metamoji/lib/dialog/IUtStringTable$DefaultImpls;
.super Ljava/lang/Object;
.source "UtStandardString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/IUtStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static get(Lcom/metamoji/lib/dialog/IUtStringTable;Lcom/metamoji/lib/dialog/UtStandardString;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p1}, Lcom/metamoji/lib/dialog/IUtStringTable;->access$get$jd(Lcom/metamoji/lib/dialog/IUtStringTable;Lcom/metamoji/lib/dialog/UtStandardString;)I

    move-result p0

    return p0
.end method
