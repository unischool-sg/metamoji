.class Lcom/metamoji/ctold/object/CtObjectReferenceImpl;
.super Ljava/lang/Object;
.source "CtObjectReferenceImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/object/CtObjectReference;


# instance fields
.field private descriptionValue:Ljava/lang/String;

.field private documentId:Ljava/lang/String;

.field private hashValue:I

.field private objectBounds:Lcom/metamoji/cm/RectEx;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/metamoji/ctold/object/CtObjectType;

.field private ownerId:Ljava/lang/String;

.field private pageId:Ljava/lang/String;

.field private thumbnail:Lcom/metamoji/cm/Blob;


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)V
    .locals 8

    .line 60
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    .line 61
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .line 60
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)V
    .locals 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    .line 71
    iput-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p5, Lcom/metamoji/cm/RectEx;

    invoke-direct {p5}, Lcom/metamoji/cm/RectEx;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    .line 75
    iput-object p6, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->thumbnail:Lcom/metamoji/cm/Blob;

    .line 76
    iput-object p7, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    .line 78
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    .line 81
    invoke-static {p2}, Lcom/metamoji/ctold/CtTagUtil;->getObjectTypeString(Lcom/metamoji/ctold/object/CtObjectType;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    .line 83
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    .line 85
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    .line 86
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    .line 78
    const-string p3, "objectType=%s, objectId=%s, ownerId=%s, pageId=%s, objectBounds=%s, documentId=%s"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->descriptionValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    .line 88
    iget-object p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    mul-int/lit8 p1, p1, 0x1f

    .line 89
    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    mul-int/lit8 p1, p1, 0x1f

    .line 90
    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    mul-int/lit8 p1, p1, 0x1f

    .line 91
    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    mul-int/lit8 p1, p1, 0x1f

    .line 92
    iget-object p2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 11

    .line 47
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v0

    const-string v1, "t"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    const-string v0, "e"

    .line 48
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "o"

    .line 49
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "p"

    .line 50
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/metamoji/cm/RectEx;

    .line 51
    const-string v0, "x"

    const-wide/16 v7, 0x0

    invoke-interface {p1, v0, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const-string v1, "y"

    .line 52
    invoke-interface {p1, v1, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v1, v9

    const-string v9, "w"

    .line 53
    invoke-interface {p1, v9, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v9, v9

    const-string v10, "h"

    .line 54
    invoke-interface {p1, v10, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-direct {v6, v0, v1, v9, v7}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const-string v0, "i"

    .line 55
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v7

    move-object v1, p0

    move-object v8, p2

    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;

    if-nez v1, :cond_1

    return v0

    .line 178
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;

    .line 179
    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    iget-object v2, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-static {v1, v2}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    .line 180
    invoke-static {v1, v2}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    .line 181
    invoke-static {v1, v2}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    .line 182
    invoke-static {v1, v2}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    .line 183
    invoke-static {v1, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->documentId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 98
    const-string v0, "OR"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 99
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 100
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v0

    const-string v1, "t"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 101
    const-string v0, "e"

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    const-string v1, "o"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string v0, "p"

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    if-eqz v0, :cond_1

    .line 107
    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v0, v0

    const-string v2, "x"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 108
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    float-to-double v0, v0

    const-string v2, "y"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v0, v0

    const-string v2, "w"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 110
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v0, v0

    const-string v2, "h"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->thumbnail:Lcom/metamoji/cm/Blob;

    if-eqz v0, :cond_2

    .line 113
    const-string v1, "i"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    :cond_2
    return-object p1
.end method

.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    iget-object v1, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Lcom/metamoji/cm/Blob;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->thumbnail:Lcom/metamoji/cm/Blob;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->objectBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->hashValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;->descriptionValue:Ljava/lang/String;

    return-object v0
.end method
