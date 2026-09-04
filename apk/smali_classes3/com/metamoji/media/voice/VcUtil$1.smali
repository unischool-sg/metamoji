.class Lcom/metamoji/media/voice/VcUtil$1;
.super Ljava/lang/Object;
.source "VcUtil.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggedObjectFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tagManager:Lcom/metamoji/ctold/CtDocTagManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/CtDocTagManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/metamoji/media/voice/VcUtil$1;->val$tagManager:Lcom/metamoji/ctold/CtDocTagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 523
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getObjectType(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object p1

    .line 524
    sget-object v0, Lcom/metamoji/media/voice/VcUtil$3;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-virtual {p1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 526
    iget-object v1, p0, Lcom/metamoji/media/voice/VcUtil$1;->val$tagManager:Lcom/metamoji/ctold/CtDocTagManager;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 532
    sget-object v0, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-interface {v1, v0, p1, p3, p2}, Lcom/metamoji/ctold/CtDocTagManager;->hasSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 526
    :cond_0
    sget-object p1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-interface {v1, p1, p2}, Lcom/metamoji/ctold/CtDocTagManager;->hasSystemTagInstanceInUnit(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
