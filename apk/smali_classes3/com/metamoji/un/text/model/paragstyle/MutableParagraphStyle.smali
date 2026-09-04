.class public Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;
.super Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.source "MutableParagraphStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public demoteListLevel()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    return v0
.end method

.method public promoteListLevel()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    if-lez v0, :cond_0

    .line 109
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    return v0
.end method

.method public setAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    return-void
.end method

.method public setAuthorInfo(Lcom/metamoji/nt/NtAuthorInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-void
.end method

.method public setBulletedChar(Ljava/lang/String;)V
    .locals 1

    .line 83
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 84
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_bulletedChar:Ljava/lang/String;

    return-void
.end method

.method public setLeftIndent(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->leftIndent:F

    return-void
.end method

.method public setLeftIndentExcept1stLine(F)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->leftIndentExcept1stLine:F

    return-void
.end method

.method public setListKind(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    return-void
.end method

.method public setListLevel(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_listLevel:I

    return-void
.end method

.method public setNumberedListKind(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-void
.end method

.method public setRightIndent(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->rightIndent:F

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->_tagId:Ljava/lang/String;

    return-void
.end method
