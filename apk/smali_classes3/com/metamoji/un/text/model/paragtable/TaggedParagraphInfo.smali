.class public Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;
.super Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
.source "TaggedParagraphInfo.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggableObject;


# instance fields
.field private _ownerUnit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/text/UnTextUnit;",
            ">;"
        }
    .end annotation
.end field

.field private _tagIdOnly:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_ownerUnit:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_tagIdOnly:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_ownerUnit:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_tagIdOnly:Ljava/lang/String;

    return-void
.end method

.method private getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_ownerUnit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    return-object v0
.end method


# virtual methods
.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lcom/metamoji/un/text/UnTextUnit;->getRectIncludingParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Landroid/graphics/RectF;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->_tagIdOnly:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 73
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTagIdGenerator()Lcom/metamoji/ctold/CtIdGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ctold/CtIdGenerator;->generateOID()Lcom/metamoji/ctold/CtOID;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v0

    invoke-static {v1}, Lcom/metamoji/ctold/CtIdGenerator;->stringFromOID(Lcom/metamoji/ctold/CtOID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setTagId(Ljava/lang/String;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    return-object v0
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;->getOwnerTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    return-object v0
.end method
