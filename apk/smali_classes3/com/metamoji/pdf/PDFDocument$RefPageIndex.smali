.class final Lcom/metamoji/pdf/PDFDocument$RefPageIndex;
.super Ljava/lang/Object;
.source "PDFDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/PDFDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefPageIndex"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFDocument$RefPageIndex;",
        "",
        "value",
        "",
        "<init>",
        "(I)V",
        "getValue",
        "()I",
        "setValue",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/pdf/PDFDocument$RefPageIndex;IILjava/lang/Object;)Lcom/metamoji/pdf/PDFDocument$RefPageIndex;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->copy(I)Lcom/metamoji/pdf/PDFDocument$RefPageIndex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    return v0
.end method

.method public final copy(I)Lcom/metamoji/pdf/PDFDocument$RefPageIndex;
    .locals 1

    new-instance v0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;

    invoke-direct {v0, p1}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;

    iget v1, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    iget p1, p1, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final setValue(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->value:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RefPageIndex(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
