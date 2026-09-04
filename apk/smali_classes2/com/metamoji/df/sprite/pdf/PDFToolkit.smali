.class public Lcom/metamoji/df/sprite/pdf/PDFToolkit;
.super Ljava/lang/Object;
.source "PDFToolkit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PDFToolkit"

.field private static singleton:Lcom/metamoji/df/sprite/pdf/PDFToolkit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/metamoji/df/sprite/pdf/PDFToolkit;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->singleton:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/pdf/PDFToolkit;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->singleton:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    .line 21
    :cond_0
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->singleton:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    return-object v0
.end method


# virtual methods
.method public DestroyFoxitFixedMemory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public InitFoxitFixedMemory(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public createDocument(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;
    .locals 1

    .line 48
    const-string v0, "PDFToolkit"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 49
    const-string p2, "PdfRenderer is not supported password"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    :try_start_0
    new-instance p2, Lcom/metamoji/df/sprite/pdf/PDFDocument;

    invoke-direct {p2, p1, p3}, Lcom/metamoji/df/sprite/pdf/PDFDocument;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
