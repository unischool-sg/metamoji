.class public final Lcom/metamoji/pdf/core/PDFObj$Companion;
.super Ljava/lang/Object;
.source "PDFObj.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/PDFObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u000e\u0010\u000c\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFObj$Companion;",
        "",
        "<init>",
        "()V",
        "Null",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "getNull",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "True",
        "getTrue",
        "False",
        "getFalse",
        "GET_RAW_STREAM",
        "",
        "GET_PROPER_STREAM",
        "pdf"
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
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFalse()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 41
    invoke-static {}, Lcom/metamoji/pdf/core/PDFObj;->access$getFalse$cp()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public final getNull()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 39
    invoke-static {}, Lcom/metamoji/pdf/core/PDFObj;->access$getNull$cp()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public final getTrue()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 40
    invoke-static {}, Lcom/metamoji/pdf/core/PDFObj;->access$getTrue$cp()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method
