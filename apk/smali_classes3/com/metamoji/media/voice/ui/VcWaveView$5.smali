.class Lcom/metamoji/media/voice/ui/VcWaveView$5;
.super Ljava/lang/Object;
.source "VcWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcWaveView;->updateWaveIndexes(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

.field final synthetic val$canEdit:Z

.field final synthetic val$indexes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/util/Map;Z)V
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

    .line 890
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->val$indexes:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->val$canEdit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 893
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetm_isShowIndexTimeLabel(Lcom/metamoji/media/voice/ui/VcWaveView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mhideTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->removeIndexViews()V

    .line 898
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->val$indexes:Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 901
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 903
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 904
    const-string v2, "$id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 905
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmIndexId(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmIndexId(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 908
    :cond_2
    const-string v2, "$startTime"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 909
    const-string v2, "$endTime"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 910
    new-instance v3, Lcom/metamoji/media/voice/ui/VcIndexView;

    iget-boolean v9, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->val$canEdit:Z

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/media/voice/ui/VcIndexView;-><init>(Ljava/lang/String;DDZ)V

    .line 911
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-object v1, v1, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$5;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void
.end method
