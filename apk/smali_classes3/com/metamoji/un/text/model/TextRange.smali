.class public Lcom/metamoji/un/text/model/TextRange;
.super Ljava/lang/Object;
.source "TextRange.java"


# instance fields
.field private empty:Z

.field private end:Lcom/metamoji/un/text/model/TextPosition;

.field private selectedAll:Z

.field private start:Lcom/metamoji/un/text/model/TextPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 15
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 26
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 67
    iput-object p2, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    .line 68
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    goto :goto_0

    .line 71
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    .line 72
    :goto_0
    iput-boolean p2, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    .line 41
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget-object v1, p1, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 45
    iget-object v1, p1, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    iget-object v2, p1, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    if-ne v1, v2, :cond_0

    .line 47
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p1, p1, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget-object v1, p1, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 57
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p1, p1, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    return-void
.end method


# virtual methods
.method public contains(Lcom/metamoji/un/text/model/TextPosition;)Z
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eq v1, p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 281
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    .line 282
    check-cast p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextRange;->isEqualToRange(Lcom/metamoji/un/text/model/TextRange;)Z

    move-result p1

    return p1

    .line 284
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEnd()Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    return-object v0
.end method

.method public getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    .line 234
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    .line 238
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    .line 240
    :goto_0
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object v2
.end method

.method public getStart()Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    return v0
.end method

.method public isEqualToRange(Lcom/metamoji/un/text/model/TextRange;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isSelectedAll()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return v0
.end method

.method public setEmpty(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->empty:Z

    return-void
.end method

.method public setEnd(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextRange;->end:Lcom/metamoji/un/text/model/TextPosition;

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method

.method public setSelectedAll(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method

.method public setStart(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextRange;->start:Lcom/metamoji/un/text/model/TextPosition;

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextRange;->selectedAll:Z

    return-void
.end method
