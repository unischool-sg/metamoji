.class public Lcom/metamoji/un/text/model/TextPosition;
.super Ljava/lang/Object;
.source "TextPosition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/un/text/model/TextPosition;",
        ">;"
    }
.end annotation


# instance fields
.field public lineEndPosition:Z

.field public swsaOffset:I

.field public textOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 25
    iput v0, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 26
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 46
    iput p2, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iput v0, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 53
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iput v0, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 54
    iget-boolean p1, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/un/text/model/TextPosition;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_6

    .line 126
    iget v1, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    .line 130
    iget v1, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-ge v1, p1, :cond_2

    return v3

    :cond_2
    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    if-le v1, p1, :cond_5

    return v4

    :cond_4
    if-le v1, v2, :cond_5

    return v4

    :cond_5
    return v3

    :cond_6
    const/4 p1, 0x0

    .line 121
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

    .line 3
    check-cast p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 95
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    check-cast p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public isFirstPosition()Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
