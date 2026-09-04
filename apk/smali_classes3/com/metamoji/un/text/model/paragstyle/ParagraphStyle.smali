.class public Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.super Ljava/lang/Object;
.source "ParagraphStyle.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;,
        Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;,
        Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;,
        Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;
    }
.end annotation


# static fields
.field private static final INDENT_PER_LISTEDLEVEL_BULLETED:F = 1.0f

.field private static final INDENT_PER_LISTEDLEVEL_NUMBERED:F = 2.0f

.field private static final SAVEDSIZE_WITH_LIST:I = 0x24


# instance fields
.field protected _authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

.field protected _bulletedChar:Ljava/lang/String;

.field protected _listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

.field protected _listLevel:I

.field protected _numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field protected _tagId:Ljava/lang/String;

.field protected align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

.field protected leftIndent:F

.field protected leftIndentExcept1stLine:F

.field protected rightIndent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    .line 197
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    .line 198
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    .line 199
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 201
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 202
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->initWithParagraphStyleExceptPersonalInfo(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 217
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    .line 218
    iget-object p1, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtAuthorInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtAuthorInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const-string v0, "leftIndent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 468
    const-string v1, "leftIndent2nd"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 469
    const-string/jumbo v2, "rightIndent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    if-eqz v2, :cond_2

    .line 473
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_2
    iput v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    .line 476
    const-string v0, "pragraphAlign"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->fromValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 481
    const-string v0, "paragraphListKind"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    :goto_3
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 485
    const-string v0, "paragraphNumberedListType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 486
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    :goto_4
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 489
    const-string v0, "paragraphBulletedChar"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 490
    :cond_6
    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    .line 493
    const-string v0, "paragraphListLevel"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 494
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_7
    iput v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    .line 497
    const-string/jumbo v0, "tagId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    .line 500
    const-string v0, "authorInfo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_9

    .line 502
    const-string v0, "class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v0, 0x0

    .line 510
    :goto_6
    const-class v1, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 511
    new-instance v0, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    .line 512
    invoke-static {v0, p1}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->init(Lcom/metamoji/nt/NtAuthorInfo;Ljava/util/Map;)Lcom/metamoji/nt/NtAuthorInfo;

    .line 513
    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    goto :goto_7

    .line 516
    :cond_8
    const-string/jumbo p1, "\u4f5c\u6210\u8005\u60c5\u5831\u306e\u578b\u304cNtAuthorInfo\u4ee5\u5916\u306b\u5909\u308f\u3063\u3066\u3044\u308b\u3002"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void
.end method

.method private createAlphabetListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;
    .locals 4

    .line 778
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/NumberedListData;->getOrder()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 780
    rem-int/lit8 v0, p1, 0x1a

    add-int/lit8 v0, v0, 0x1

    const-string v1, ""

    .line 784
    :cond_0
    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    if-ne v2, v3, :cond_1

    const/16 v2, 0x60

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    add-int/2addr v2, v0

    int-to-char v0, v2

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 787
    div-int/lit8 p1, p1, 0x1a

    .line 788
    rem-int/lit8 v0, p1, 0x1a

    if-gtz p1, :cond_0

    return-object v1
.end method

.method private createNumberedListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->createAlphabetListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 758
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/NumberedListData;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "(%d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 754
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/NumberedListData;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 750
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/NumberedListData;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeListFormat()V
    .locals 1

    .line 712
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    const/4 v0, 0x0

    .line 714
    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    return-void
.end method


# virtual methods
.method public cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;
    .locals 1

    .line 222
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 223
    invoke-virtual {v0, p0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->initWithParagraphStyleExceptPersonalInfo(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    return-object v0
.end method

.method public createListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 730
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->createNumberedListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 726
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    return-object p1
.end method

.method public encodeToJSONDictionary(Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Indent:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "leftIndent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "leftIndent2nd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "rightIndent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pragraphAlign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->toIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paragraphListKind"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_2
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->NumeralListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->toIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paragraphNumberedListType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_3
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    const-string v1, "paragraphBulletedChar"

    iget-object v2, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_4
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paragraphListLevel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_5
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->TagId:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 444
    const-string/jumbo v2, "tagId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_6
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->AuthorInfo:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 448
    iget-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz p1, :cond_7

    .line 449
    invoke-static {p1}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->encodeToJSONDictionary(Lcom/metamoji/nt/NtAuthorInfo;)Ljava/util/Map;

    move-result-object p1

    .line 451
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "authorInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 550
    :cond_1
    instance-of v2, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    if-nez v2, :cond_2

    return v1

    .line 553
    :cond_2
    check-cast p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    .line 554
    iget v2, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    iget v3, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    iget v3, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    iget v3, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    iget-object v3, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    if-ne v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 558
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iget-object v4, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 559
    sget-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iget-object v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    if-eq v3, v4, :cond_9

    .line 560
    iget v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    iget v5, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    if-ne v3, v5, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 562
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v3

    if-eq v3, v0, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    goto :goto_4

    .line 567
    :cond_6
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    iget-object v4, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    if-ne v3, v4, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v1

    goto :goto_3

    .line 564
    :cond_8
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    and-int/2addr v2, v3

    .line 575
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v4, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5

    :cond_a
    iget-object v3, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    and-int/2addr v2, v3

    .line 577
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    iget-object p1, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p1}, Lcom/metamoji/nt/NtAuthorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_c
    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    and-int p1, v2, v0

    return p1
.end method

.method public getAlign()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    return-object v0
.end method

.method public getAuthorInfo()Lcom/metamoji/nt/NtAuthorInfo;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    return-object v0
.end method

.method public getBulletedChar()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIndent()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    return v0
.end method

.method public getLeftIndentExcept1stLine()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    return v0
.end method

.method public getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    return-object v0
.end method

.method public getListLevel()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    return v0
.end method

.method public getNumberedListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object v0
.end method

.method public getRightIndent()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLeftIndent()F
    .locals 4

    .line 599
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    .line 600
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v0

    .line 607
    :cond_0
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    .line 603
    :cond_1
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTotalLeftIndentExcept1stLine()F
    .locals 4

    .line 622
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    .line 623
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v0

    .line 630
    :cond_0
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0

    .line 626
    :cond_1
    iget v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public indentIsSet()Z
    .locals 2

    .line 649
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndentExcept1stLine()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected initWithParagraphStyleExceptPersonalInfo(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V
    .locals 1

    .line 233
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    .line 234
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    .line 235
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    .line 236
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 238
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 239
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 240
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    .line 241
    iget-object p1, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    return-void
.end method

.method public overwriteOtherStyles(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;"
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 664
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Indent:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    .line 666
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    .line 667
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    .line 670
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    .line 674
    :cond_1
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->BulletedListChar:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    .line 677
    :cond_2
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->NumeralListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 680
    :cond_3
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    iget-object v1, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    if-eq v0, v1, :cond_5

    .line 682
    iput-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 683
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 685
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->removeListFormat()V

    .line 692
    :cond_5
    :goto_0
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 693
    iget v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    iput v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    .line 696
    :cond_6
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->TagId:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    .line 700
    :cond_7
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->AuthorInfo:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 701
    iget-object p1, p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/nt/NtAuthorInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtAuthorInfo;

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    :cond_9
    return-object p0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 7

    .line 299
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 305
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v0

    .line 306
    iget v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 307
    iget v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 308
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->getIntValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 310
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->toIntValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 311
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->toIntValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 312
    iget v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 313
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 314
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    iget-object v3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->classIdByName(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-lez v1, :cond_3

    .line 321
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    invoke-static {v1, p1}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->serialize(Lcom/metamoji/nt/NtAuthorInfo;Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    goto :goto_3

    .line 325
    :cond_3
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 329
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 331
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 333
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 337
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v3

    if-lez v0, :cond_8

    .line 343
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v4

    iput v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndent:F

    .line 344
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v4

    iput v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->leftIndentExcept1stLine:F

    .line 345
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v4

    iput v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->rightIndent:F

    .line 346
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->fromValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    add-int/lit8 v4, v0, -0x10

    if-lez v4, :cond_8

    .line 350
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 352
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_listLevel:I

    .line 354
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    int-to-char v4, v4

    .line 355
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v5

    int-to-char v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [C

    aput-char v4, v6, v2

    aput-char v5, v6, v1

    .line 356
    aget-char v4, v6, v2

    if-nez v4, :cond_5

    .line 357
    const-string v1, ""

    iput-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    goto :goto_4

    .line 358
    :cond_5
    aget-char v4, v6, v1

    if-nez v4, :cond_6

    .line 359
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    goto :goto_4

    .line 361
    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_bulletedChar:Ljava/lang/String;

    :goto_4
    add-int/lit8 v1, v0, -0x24

    if-lez v1, :cond_8

    .line 365
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_tagId:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 368
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v1

    if-lez v1, :cond_8

    .line 373
    :try_start_0
    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->classNameById(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v1, 0x0

    .line 377
    :goto_5
    const-class v4, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 378
    new-instance v1, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v1}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->_authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    .line 379
    invoke-static {v1, p1}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->serialize(Lcom/metamoji/nt/NtAuthorInfo;Lcom/metamoji/cm/DataArchiver;)I

    goto :goto_6

    .line 382
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v1

    .line 383
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    :cond_8
    :goto_6
    add-int/2addr v3, v0

    .line 391
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v2
.end method
