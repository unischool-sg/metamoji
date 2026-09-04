.class public final Lcom/metamoji/pdf/content/OCGs$Companion;
.super Ljava/lang/Object;
.source "OCGs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/content/OCGs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/OCGs$Companion;",
        "",
        "<init>",
        "()V",
        "getDefault",
        "Lcom/metamoji/pdf/content/OCGs;",
        "doc",
        "Lcom/metamoji/pdf/PDFDocument;",
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/content/OCGs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault(Lcom/metamoji/pdf/PDFDocument;)Lcom/metamoji/pdf/content/OCGs;
    .locals 2

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/metamoji/pdf/content/OCGs;

    invoke-direct {v0}, Lcom/metamoji/pdf/content/OCGs;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const-string v1, "OCProperties"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "OCGs"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/content/OCGs;->init(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 108
    const-string v1, "D"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/content/OCGs;->setConfig(Lcom/metamoji/pdf/core/PDFObj;)V

    :cond_0
    return-object v0
.end method
