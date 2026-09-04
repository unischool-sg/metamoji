.class public Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;
.super Ljava/lang/Object;
.source "ParagraphInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final LINETABLEINDEX_TEMPORARY:I


# instance fields
.field public lineNo:I

.field public lineTableIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    .line 33
    iput p2, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I
    .locals 4

    if-eqz p1, :cond_5

    .line 50
    iget v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    iget v1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 55
    iget v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    iget p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    if-le v0, p1, :cond_4

    return v3

    :cond_3
    if-le v0, v1, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->compareTo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result p1

    return p1
.end method
