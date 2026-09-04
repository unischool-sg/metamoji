.class public Lcom/metamoji/ctold/object/CtObjectReferenceFactory;
.super Ljava/lang/Object;
.source "CtObjectReferenceFactory.java"


# static fields
.field private static final SINGLETON:Lcom/metamoji/ctold/object/CtObjectReferenceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    invoke-direct {v0}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->SINGLETON:Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final instance()Lcom/metamoji/ctold/object/CtObjectReferenceFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->SINGLETON:Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 9

    .line 42
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtTagUtil;->getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;

    move-result-object v6

    .line 44
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 45
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    .line 47
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v8, p3

    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 8

    .line 80
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 64
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 1

    .line 91
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-object v0
.end method

.method public update(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 1

    .line 103
    new-instance v0, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/ctold/object/CtObjectReferenceImpl;-><init>(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)V

    return-object v0
.end method
