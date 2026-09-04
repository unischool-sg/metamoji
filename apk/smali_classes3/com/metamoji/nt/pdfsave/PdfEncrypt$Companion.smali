.class public final Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;
.super Ljava/lang/Object;
.source "PdfSaveEncrypt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfSaveEncrypt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfSaveEncrypt.kt\ncom/metamoji/nt/pdfsave/PdfEncrypt$Companion\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,185:1\n990#2:186\n1065#2,3:187\n*S KotlinDebug\n*F\n+ 1 PdfSaveEncrypt.kt\ncom/metamoji/nt/pdfsave/PdfEncrypt$Companion\n*L\n44#1:186\n44#1:187,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J6\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;",
        "",
        "<init>",
        "()V",
        "BIT_LENGTH",
        "",
        "create",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "fileid",
        "",
        "prohibit",
        "Ljava/util/EnumSet;",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
        "userPassword",
        "",
        "ownerPassword_",
        "strToBytes",
        "str",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;[BLjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/nt/pdfsave/PdfEncrypt;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;->create([BLjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    move-result-object p0

    return-object p0
.end method

.method private final strToBytes(Ljava/lang/String;)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 44
    check-cast p1, Ljava/lang/CharSequence;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 187
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    .line 44
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 188
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 44
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final create([BLjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/pdfsave/PdfEncrypt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/nt/pdfsave/PdfEncrypt;"
        }
    .end annotation

    const-string v0, "fileid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prohibit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object p4, p3

    .line 40
    :cond_1
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    invoke-direct {p0, p3}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;->strToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Companion;->strToBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;-><init>([BLjava/util/EnumSet;[B[BLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
