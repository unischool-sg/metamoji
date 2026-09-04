.class public Lcom/metamoji/ctold/tag/CtTagInstance;
.super Lcom/metamoji/ctold/tag/CtTagBase;
.source "CtTagInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
    }
.end annotation


# instance fields
.field private objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

.field private tagClass:Lcom/metamoji/ctold/tag/CtTagClass;


# direct methods
.method public constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v0}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;)V

    .line 62
    iput-object p3, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    .line 69
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 74
    iput-object p2, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v0}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 44
    iput-object p3, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    return-void
.end method


# virtual methods
.method public drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagClass()Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ctold/tag/CtTagClass;->drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagClass()Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/ctold/tag/CtTagClass;->drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagClass()Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/ctold/tag/CtTagClass;->drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/tag/CtTagInstance;

    if-nez v1, :cond_1

    return v0

    .line 115
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/tag/CtTagInstance;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->equalsCtTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Z

    move-result p1

    return p1
.end method

.method public equalsCtTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;->equalsCtTagBase(Lcom/metamoji/ctold/tag/CtTagBase;)Z

    move-result p1

    return p1
.end method

.method public getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    return-object v0
.end method

.method public getTagClass()Lcom/metamoji/ctold/tag/CtTagClass;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/metamoji/ctold/template/CtTemplateManager;->instance()Lcom/metamoji/ctold/template/CtTemplateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ctold/template/CtTemplateManager;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance;->tagClass:Lcom/metamoji/ctold/tag/CtTagClass;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/metamoji/ctold/tag/CtTagBase;->hashCode()I

    move-result v0

    return v0
.end method
