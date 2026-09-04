.class public final Lcom/metamoji/pdf/PDFDocument$Companion;
.super Ljava/lang/Object;
.source "PDFDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/PDFDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPDFDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PDFDocument.kt\ncom/metamoji/pdf/PDFDocument$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,846:1\n1#2:847\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tJ*\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tJ$\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFDocument$Companion;",
        "",
        "<init>",
        "()V",
        "indexOfPage",
        "",
        "page",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "DEFAULT_KEY",
        "",
        "defaultKey",
        "password",
        "hashV5",
        "r",
        "salt",
        "u",
        "hashR6",
        "data",
        "normalizePassword",
        "",
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

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/PDFDocument$Companion;-><init>()V

    return-void
.end method

.method private final hashR6([B[B[B)[B
    .locals 9

    .line 632
    sget-object v0, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createSHA256()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 634
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 639
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 641
    array-length v4, p1

    invoke-virtual {v2, p1, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 642
    array-length v4, p2

    invoke-virtual {v2, p2, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p3, :cond_0

    .line 644
    array-length v4, p3

    invoke-virtual {v2, p3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 647
    :cond_1
    sget-object v3, Lcom/metamoji/pdf/core/AES;->INSTANCE:Lcom/metamoji/pdf/core/AES;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v5, "toByteArray(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/ranges/IntRange;

    const/16 v6, 0xf

    invoke-direct {v5, v0, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v5}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v5

    new-instance v6, Lkotlin/ranges/IntRange;

    const/16 v7, 0x1f

    const/16 v8, 0x10

    invoke-direct {v6, v8, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v6}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p2

    invoke-virtual {v3, v2, v5, p2, v0}, Lcom/metamoji/pdf/core/AES;->encrypt([B[B[BZ)[B

    move-result-object p2

    .line 651
    invoke-static {p2, v8}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    invoke-static {v5}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_2
    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3

    .line 656
    sget-object v2, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createSHA512()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v2

    goto :goto_3

    .line 655
    :cond_3
    sget-object v2, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createSHA384()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v2

    goto :goto_3

    .line 654
    :cond_4
    sget-object v2, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createSHA256()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v2

    .line 658
    :goto_3
    invoke-virtual {v2, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 659
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-lt v3, v4, :cond_5

    .line 662
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->last([B)B

    move-result p2

    invoke-static {p2}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result p2

    add-int/lit8 v1, v1, -0x1f

    if-gt p2, v1, :cond_5

    const/16 p1, 0x20

    .line 664
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    move-object p2, v2

    move v1, v3

    goto/16 :goto_0
.end method

.method static synthetic hashR6$default(Lcom/metamoji/pdf/PDFDocument$Companion;[B[B[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 631
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashR6([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hashV5$default(Lcom/metamoji/pdf/PDFDocument$Companion;I[B[B[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 617
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashV5(I[B[B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final defaultKey([B)[B
    .locals 1

    if-nez p1, :cond_0

    .line 613
    invoke-static {}, Lcom/metamoji/pdf/PDFDocument;->access$getDEFAULT_KEY$cp()[B

    move-result-object p1

    return-object p1

    .line 614
    :cond_0
    invoke-static {}, Lcom/metamoji/pdf/PDFDocument;->access$getDEFAULT_KEY$cp()[B

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final hashV5(I[B[B[B)[B
    .locals 1

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "salt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 619
    invoke-static {p2, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    if-nez p4, :cond_0

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    invoke-static {p1, p3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashR6([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 621
    :cond_1
    sget-object p1, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createSHA256()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object p1

    .line 622
    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 623
    invoke-virtual {p1, p3}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    if-eqz p4, :cond_2

    .line 625
    invoke-virtual {p1, p4}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 627
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    return-object p1
.end method

.method public final indexOfPage(Lcom/metamoji/pdf/core/PDFObj;)I
    .locals 6

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    const-string v0, "Parent"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 597
    :cond_0
    const-string v1, "Kids"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/pdf/core/PDFObj;

    .line 598
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    const-string v4, "Type"

    invoke-virtual {v3, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v4

    .line 600
    const-string v5, "Page"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    :cond_2
    const-string v5, "Pages"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/PDFDocument$Companion;->indexOfPage(Lcom/metamoji/pdf/core/PDFObj;)I

    move-result p1

    add-int/2addr v2, p1

    return v2
.end method

.method public final normalizePassword(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    .line 669
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    return-object p1

    .line 677
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7f

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1
.end method
