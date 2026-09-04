.class Lcom/metamoji/un/text/UnTextUnit$47;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Ljava/util/List<",
        "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$onCompletedAction:Lcom/metamoji/cm/IAction1;

.field final synthetic val$positionEdited:Lcom/metamoji/un/text/model/TextPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11487
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$47;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$47;->val$positionEdited:Lcom/metamoji/un/text/model/TextPosition;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$47;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic perform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11487
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$47;->perform(Ljava/util/List;)V

    return-void
.end method

.method public perform(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation

    .line 11491
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 11492
    iget-object v1, v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    .line 11493
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$47;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_0

    .line 11503
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 11509
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 11510
    iget-object v1, v1, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$47;->val$positionEdited:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextRange;->contains(Lcom/metamoji/un/text/model/TextPosition;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11511
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 11516
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 11517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 11519
    iget-object v2, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11523
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$47;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mputSpellErrorMarkToTextAttributes(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/List;)V

    .line 11525
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$47;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    if-eqz v0, :cond_4

    .line 11526
    invoke-interface {v0, p1}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
