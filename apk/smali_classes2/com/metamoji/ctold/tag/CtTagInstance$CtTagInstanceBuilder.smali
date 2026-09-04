.class public Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
.super Ljava/lang/Object;
.source "CtTagInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/tag/CtTagInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtTagInstanceBuilder"
.end annotation


# instance fields
.field private objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;"
        }
    .end annotation
.end field

.field private systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

.field private tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    .line 141
    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->properties:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTagInstance()Lcom/metamoji/ctold/tag/CtTagInstance;
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->properties:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_UNKNOWN:Lcom/metamoji/ctold/tag/CtSystemTagId;

    if-eq v0, v1, :cond_1

    .line 172
    new-instance v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    iget-object v2, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->properties:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ctold/tag/CtTagInstance;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectReference;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public objectReference(Lcom/metamoji/ctold/object/CtObjectReference;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference:Lcom/metamoji/ctold/object/CtObjectReference;

    return-object p0
.end method

.method public property(Lcom/metamoji/ctold/property/CtProperty;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public systemTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    return-object p0
.end method

.method public tagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId:Ljava/lang/String;

    return-object p0
.end method
