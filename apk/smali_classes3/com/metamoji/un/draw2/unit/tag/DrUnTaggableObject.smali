.class public Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;
.super Ljava/lang/Object;
.source "DrUnTaggableObject.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    }
.end annotation


# static fields
.field private static final ID_PREFIX_ELEMENT:Ljava/lang/String; = "TE!"

.field private static final ID_PREFIX_GROUP:Ljava/lang/String; = "TG!"


# instance fields
.field private m_baseSprite:Lcom/metamoji/df/sprite/Sprite;

.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_objectId:Ljava/lang/String;

.field private m_owner:Lcom/metamoji/ctold/CtTaggableObject;

.field private m_type:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

.field private m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public static idFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2

    if-eqz p0, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 135
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 138
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;-><init>()V

    .line 139
    iput-object p0, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_type:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 140
    iput-object p1, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 141
    iget-object v1, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, p2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 142
    iput-object p3, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_baseSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 143
    iput-object p4, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_owner:Lcom/metamoji/ctold/CtTaggableObject;

    .line 144
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_objectId:Ljava/lang/String;

    return-object v0
.end method

.method public static objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ordinal()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TG!"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 158
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TE!"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static typeFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    .locals 2

    if-eqz p0, :cond_3

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_2

    const/16 v0, 0x47

    if-eq p0, v0, :cond_1

    .line 176
    sget-object p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->UNKNOWN:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object p0

    .line 174
    :cond_1
    sget-object p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object p0

    .line 172
    :cond_2
    sget-object p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object p0

    .line 168
    :cond_3
    :goto_0
    sget-object p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->UNKNOWN:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object p0
.end method


# virtual methods
.method public baseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_baseSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_baseSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_type:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 74
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_1
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_owner:Lcom/metamoji/ctold/CtTaggableObject;

    return-object v0
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_owner:Lcom/metamoji/ctold/CtTaggableObject;

    return-object v0
.end method

.method public owner()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_owner:Lcom/metamoji/ctold/CtTaggableObject;

    return-object v0
.end method

.method public type()Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_type:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    return-object v0
.end method

.method public uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method
