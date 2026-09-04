.class public Lcom/metamoji/un/util/UnTaggableSaveObject;
.super Ljava/lang/Object;
.source "UnTaggableSaveObject.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggableObject;


# instance fields
.field private _objectID:Ljava/lang/String;

.field private _objectType:Lcom/metamoji/ctold/object/CtObjectType;

.field private _ownerUnit:Lcom/metamoji/un/util/UnTaggableSaveObject;

.field private _parentObject:Lcom/metamoji/un/util/UnTaggableSaveObject;


# direct methods
.method private constructor <init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNKNOWN:Lcom/metamoji/ctold/object/CtObjectType;

    .line 19
    iput-object p1, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_objectType:Lcom/metamoji/ctold/object/CtObjectType;

    .line 20
    iput-object p2, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_objectID:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_ownerUnit:Lcom/metamoji/un/util/UnTaggableSaveObject;

    .line 22
    iput-object p4, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_parentObject:Lcom/metamoji/un/util/UnTaggableSaveObject;

    return-void
.end method

.method public static createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;
    .locals 1

    .line 27
    new-instance v0, Lcom/metamoji/un/util/UnTaggableSaveObject;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/un/util/UnTaggableSaveObject;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)V

    return-object v0
.end method


# virtual methods
.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 77
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_objectID:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_objectType:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_ownerUnit:Lcom/metamoji/un/util/UnTaggableSaveObject;

    return-object v0
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/util/UnTaggableSaveObject;->_parentObject:Lcom/metamoji/un/util/UnTaggableSaveObject;

    return-object v0
.end method
