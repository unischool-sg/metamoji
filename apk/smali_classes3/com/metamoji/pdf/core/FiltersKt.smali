.class public final Lcom/metamoji/pdf/core/FiltersKt;
.super Ljava/lang/Object;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a \u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0002\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "connectFilter",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "reader",
        "name_",
        "",
        "parms",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "abbr",
        "",
        "CLEAR_TABLE",
        "",
        "EOD",
        "DIC_BASE",
        "paeth",
        "a",
        "b",
        "c",
        "pdf"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLEAR_TABLE:I = 0x100

.field private static final DIC_BASE:I = 0x102

.field private static final EOD:I = 0x101


# direct methods
.method public static final synthetic access$paeth(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/metamoji/pdf/core/FiltersKt;->paeth(III)I

    move-result p0

    return p0
.end method

.method public static final connectFilter(Lcom/metamoji/pdf/core/PDFInputStream;Ljava/lang/String;Lcom/metamoji/pdf/core/PDFObj;Z)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 6

    const-string v0, "reader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-string v0, "RunLengthDecode"

    const-string v1, "ASCII85Decode"

    const-string v2, "LZWDecode"

    const-string v3, "ASCIIHexDecode"

    const-string v4, "FlateDecode"

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/16 v5, 0x8e6

    if-eq p3, v5, :cond_8

    const/16 v5, 0xa3a

    if-eq p3, v5, :cond_6

    const v5, 0xfafe

    if-eq p3, v5, :cond_4

    const v5, 0xfd31

    if-eq p3, v5, :cond_2

    const v5, 0x12889

    if-eq p3, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "LZW"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_0

    :cond_2
    const-string p3, "AHx"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v3

    goto :goto_0

    :cond_4
    const-string p3, "A85"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, v1

    goto :goto_0

    :cond_6
    const-string p3, "RL"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    move-object p1, v0

    goto :goto_0

    :cond_8
    const-string p3, "Fl"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_0

    :cond_9
    move-object p1, v4

    .line 19
    :cond_a
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const-string/jumbo v5, "unsupported stream filter"

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 46
    new-instance p1, Lcom/metamoji/pdf/core/RLEReader;

    invoke-direct {p1, p0}, Lcom/metamoji/pdf/core/RLEReader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object p1

    .line 19
    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 44
    new-instance p1, Lcom/metamoji/pdf/core/ASCII85Reader;

    invoke-direct {p1, p0}, Lcom/metamoji/pdf/core/ASCII85Reader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object p1

    .line 19
    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 22
    :goto_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/metamoji/pdf/core/FlateReader;

    invoke-direct {p1, p0}, Lcom/metamoji/pdf/core/FlateReader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    check-cast p1, Lcom/metamoji/pdf/core/FilterStream;

    goto :goto_3

    .line 24
    :cond_b
    const-string p1, "EarlyChange"

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p1

    if-eqz p1, :cond_c

    move p1, p3

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    .line 25
    :goto_2
    new-instance v0, Lcom/metamoji/pdf/core/LZWReader;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/pdf/core/LZWReader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Z)V

    move-object p1, v0

    check-cast p1, Lcom/metamoji/pdf/core/FilterStream;

    .line 28
    :goto_3
    const-string p0, "Predictor"

    invoke-virtual {p2, p0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p0

    if-ne p0, p3, :cond_d

    goto :goto_4

    :cond_d
    const/16 v0, 0xa

    if-gt v0, p0, :cond_e

    const/16 v0, 0x10

    if-ge p0, v0, :cond_e

    .line 31
    const-string p0, "BitsPerComponent"

    invoke-virtual {p2, p0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p0

    .line 32
    const-string v1, "Columns"

    invoke-virtual {p2, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v1

    .line 33
    const-string v2, "Colors"

    invoke-virtual {p2, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p2

    mul-int/2addr p0, p2

    add-int/lit8 v2, p0, 0x7

    .line 35
    div-int/2addr v2, v0

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x7

    .line 36
    div-int/2addr p0, v0

    .line 38
    new-instance v0, Lcom/metamoji/pdf/core/PredictorReader;

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    add-int/2addr p0, p2

    sub-int/2addr p0, p3

    div-int/2addr p0, p2

    invoke-direct {v0, p1, p0, v2}, Lcom/metamoji/pdf/core/PredictorReader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;II)V

    move-object p1, v0

    check-cast p1, Lcom/metamoji/pdf/core/FilterStream;

    .line 27
    :goto_4
    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object p1

    .line 40
    :cond_e
    new-instance p0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p0, v5}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 45
    new-instance p1, Lcom/metamoji/pdf/core/ASCIIHexReader;

    invoke-direct {p1, p0}, Lcom/metamoji/pdf/core/ASCIIHexReader;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object p1

    .line 47
    :cond_f
    :goto_5
    new-instance p0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p0, v5}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bc4ff48 -> :sswitch_4
        -0x27fa429 -> :sswitch_3
        0x1ce0897c -> :sswitch_2
        0x2e58c27f -> :sswitch_1
        0x5e17dcfa -> :sswitch_0
    .end sparse-switch
.end method

.method private static final paeth(III)I
    .locals 3

    add-int v0, p0, p1

    sub-int/2addr v0, p2

    sub-int v1, v0, p0

    .line 170
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p1

    .line 171
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p2

    .line 172
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    return p0

    :cond_0
    if-gt v2, v0, :cond_1

    return p1

    :cond_1
    return p2
.end method
