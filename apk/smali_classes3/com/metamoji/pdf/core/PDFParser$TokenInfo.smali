.class public final Lcom/metamoji/pdf/core/PDFParser$TokenInfo;
.super Ljava/lang/Object;
.source "PDFParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/PDFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TokenInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0084\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFParser$TokenInfo;",
        "",
        "type",
        "Lcom/metamoji/pdf/core/PDFParser$TokenType;",
        "token",
        "",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFParser$TokenType;",
        "getToken",
        "()[B",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final token:[B

.field private final type:Lcom/metamoji/pdf/core/PDFParser$TokenType;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    iput-object p2, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/pdf/core/PDFParser$TokenInfo;Lcom/metamoji/pdf/core/PDFParser$TokenType;[BILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFParser$TokenInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->copy(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    return-object v0
.end method

.method public final copy(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)Lcom/metamoji/pdf/core/PDFParser$TokenInfo;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    iget-object v3, p1, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    iget-object p1, p1, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getToken()[B
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    return-object v0
.end method

.method public final getType()Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->type:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->token:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TokenInfo(type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
