.class public final Lcom/metamoji/pdf/core/CryptFilter$Companion;
.super Ljava/lang/Object;
.source "CryptFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/CryptFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J&\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/CryptFilter$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "cfm",
        "",
        "SALT",
        "",
        "cryptoKey",
        "key_",
        "id",
        "",
        "gen",
        "addSalt",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/CryptFilter$Companion;-><init>()V

    return-void
.end method

.method private final create(Ljava/lang/String;Lcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/core/CryptFilter;
    .locals 1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AESV3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/AESV3Filter;

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/AESV3Filter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    check-cast p1, Lcom/metamoji/pdf/core/CryptFilter;

    return-object p1

    .line 28
    :sswitch_1
    const-string v0, "AESV2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Lcom/metamoji/pdf/core/AESV2Filter;

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/AESV2Filter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    check-cast p1, Lcom/metamoji/pdf/core/CryptFilter;

    return-object p1

    .line 28
    :sswitch_2
    const-string v0, "None"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Lcom/metamoji/pdf/core/IdentityFilter;

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/IdentityFilter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    check-cast p1, Lcom/metamoji/pdf/core/CryptFilter;

    return-object p1

    .line 28
    :sswitch_3
    const-string v0, "V2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    new-instance p1, Lcom/metamoji/pdf/core/V2Filter;

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/V2Filter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    check-cast p1, Lcom/metamoji/pdf/core/CryptFilter;

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xa9c -> :sswitch_3
        0x252358 -> :sswitch_2
        0x3b4978b -> :sswitch_1
        0x3b4978c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final create(Lcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/core/CryptFilter;
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-string v0, "CFM"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->create(Ljava/lang/String;Lcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;
    .locals 1

    const-string v0, "cfm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->create(Ljava/lang/String;Lcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p1

    return-object p1
.end method

.method public final cryptoKey([BIIZ)[B
    .locals 3

    const-string v0, "key_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move p1, v2

    :goto_0
    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    and-int/lit16 v1, p2, 0xff

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    and-int/lit16 p2, p3, 0xff

    .line 52
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-eqz p4, :cond_3

    .line 59
    invoke-static {}, Lcom/metamoji/pdf/core/CryptFilter;->access$getSALT$cp()[B

    move-result-object p2

    invoke-static {}, Lcom/metamoji/pdf/core/CryptFilter;->access$getSALT$cp()[B

    move-result-object p3

    array-length p3, p3

    invoke-virtual {v0, p2, v2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 62
    :cond_3
    sget-object p2, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object p2

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const-string/jumbo p4, "toByteArray(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 64
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p2

    .line 65
    array-length p3, p2

    if-le p3, p1, :cond_4

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    return-object p2
.end method
