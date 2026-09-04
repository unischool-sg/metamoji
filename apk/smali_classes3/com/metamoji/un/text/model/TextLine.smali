.class public Lcom/metamoji/un/text/model/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# instance fields
.field public runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cm/Range;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWriting:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextLine;->verticalWriting:Z

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Range;

    iget v0, v0, Lcom/metamoji/cm/Range;->location:I

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/Range;

    iget v2, v2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    iget v1, v1, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getLocation()I
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Range;

    iget v0, v0, Lcom/metamoji/cm/Range;->location:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRunCount()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isVerticalWriting()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextLine;->verticalWriting:Z

    return v0
.end method
