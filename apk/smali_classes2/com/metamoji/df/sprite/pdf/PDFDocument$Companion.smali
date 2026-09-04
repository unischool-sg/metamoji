.class public final Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;
.super Ljava/lang/Object;
.source "PDFDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/pdf/PDFDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;",
        "",
        "<init>",
        "()V",
        "WORKDIRNAME",
        "",
        "WORKDIR",
        "Ljava/io/File;",
        "getWORKDIR",
        "()Ljava/io/File;",
        "sprite"
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

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWORKDIR(Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;)Ljava/io/File;
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;->getWORKDIR()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getWORKDIR()Ljava/io/File;
    .locals 3

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.metamoji.df.sprite.pdf.work"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-object v0
.end method
