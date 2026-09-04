.class public final Lcom/metamoji/nt/pdfsave/PdfEncrypt;
.super Ljava/lang/Object;
.source "PdfSaveEncrypt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;,
        Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0002\"#B3\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001c\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0002J*\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0018\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003H\u0002J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000cJ\u001e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000cJ\u000e\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020!R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "",
        "fileid",
        "",
        "prohibit",
        "Ljava/util/EnumSet;",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
        "userPassword",
        "ownerPassword",
        "<init>",
        "([BLjava/util/EnumSet;[B[B)V",
        "_permission",
        "",
        "_o",
        "_u",
        "_key",
        "createO",
        "createKey",
        "o",
        "permission",
        "createU",
        "key",
        "_getKey",
        "id",
        "gen",
        "stream",
        "",
        "getKey",
        "Lcom/metamoji/nt/pdfsave/PdfEncryptKey;",
        "filter",
        "Ljava/io/OutputStream;",
        "save",
        "writer",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "Prohibit",
        "Companion",
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


# static fields
.field private static final BIT_LENGTH:I = 0x80

.field public static final Companion:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;


# instance fields
.field private _key:[B

.field private _o:[B

.field private _permission:I

.field private _u:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->Companion:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;

    return-void
.end method

.method private constructor <init>([BLjava/util/EnumSet;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
            ">;[B[B)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_permission:I

    .line 50
    invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 51
    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->getFlag()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    not-int p2, v0

    .line 53
    iput p2, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_permission:I

    .line 54
    invoke-direct {p0, p3, p4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->createO([B[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_o:[B

    .line 55
    iget p4, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_permission:I

    invoke-direct {p0, p3, p2, p1, p4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->createKey([B[B[BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_key:[B

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->createU([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_u:[B

    return-void
.end method

.method public synthetic constructor <init>([BLjava/util/EnumSet;[B[BLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;-><init>([BLjava/util/EnumSet;[B[B)V

    return-void
.end method

.method private final _getKey(IIZ)[B
    .locals 3

    .line 130
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_key:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    and-int/lit16 v1, p1, 0xff

    .line 135
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 p1, 0x2

    if-ge v2, p1, :cond_1

    and-int/lit16 p1, p2, 0xff

    .line 140
    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    .line 146
    sget-object p2, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object p2

    .line 147
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const-string/jumbo v0, "toByteArray(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 148
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p2

    .line 149
    array-length p3, p2

    if-gt p3, p1, :cond_2

    return-object p2

    :cond_2
    invoke-static {p2, p1}, Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;->access$resize([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private final createKey([B[B[BI)[B
    .locals 5

    const/4 v0, 0x4

    .line 87
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    and-int/lit16 v4, p4, 0xff

    int-to-byte v4, v4

    .line 90
    aput-byte v4, v1, v3

    shr-int/lit8 p4, p4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object p4, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {p4}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object p4

    .line 97
    sget-object v0, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 98
    invoke-virtual {p4, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 99
    invoke-virtual {p4, v1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 100
    invoke-virtual {p4, p3}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 101
    invoke-virtual {p4}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;->access$resize([BI)[B

    move-result-object p1

    :goto_1
    const/16 p3, 0x32

    if-ge v2, p3, :cond_1

    .line 105
    invoke-virtual {p4, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 106
    invoke-virtual {p4}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;->access$resize([BI)[B

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private final createO([B[B)[B
    .locals 7

    .line 61
    sget-object v0, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v1, p2}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 67
    invoke-virtual {v0, p2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 68
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object p1

    const/16 v0, 0x10

    .line 74
    new-array v2, v0, [B

    move v3, v1

    :goto_1
    const/16 v4, 0x14

    if-ge v3, v4, :cond_2

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_1

    .line 77
    aget-byte v5, p2, v4

    int-to-byte v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 79
    :cond_1
    sget-object v4, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v4, p1, v2}, Lcom/metamoji/pdf/core/RC4;->encrypt([B[B)[B

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private final createU([B[B)[B
    .locals 7

    .line 114
    sget-object v0, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 116
    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 117
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    .line 119
    array-length v0, p2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 121
    array-length v3, p2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 122
    aget-byte v5, p2, v4

    int-to-byte v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 124
    :cond_0
    sget-object v3, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v3, p1, v0}, Lcom/metamoji/pdf/core/RC4;->encrypt([B[B)[B

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    .line 126
    invoke-static {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;->access$resize([BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final filter(Ljava/io/OutputStream;II)Ljava/io/OutputStream;
    .locals 2

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v1}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_getKey(IIZ)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/pdf/core/RC4;->getWriter(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getKey(II)Lcom/metamoji/nt/pdfsave/PdfEncryptKey;
    .locals 2

    .line 153
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_getKey(IIZ)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfEncryptKey;-><init>([B)V

    return-object v0
.end method

.method public final save(Lcom/metamoji/nt/pdfsave/PdfWriter;)I
    .locals 6

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginDictionary()V

    .line 165
    const-string v1, "/Filter/Standard"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 166
    const-string v1, "/V 2"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 167
    const-string v1, "/Length 128"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 168
    const-string v1, "/R 3"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 169
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_permission:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/P "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_o:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->HEX$default([BLcom/metamoji/nt/pdfsave/PdfEncryptKey;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/O "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->_u:[B

    invoke-static {v1, v2, v3, v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->HEX$default([BLcom/metamoji/nt/pdfsave/PdfEncryptKey;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/U "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endDictionary()V

    .line 174
    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endObject()V

    return v0
.end method
