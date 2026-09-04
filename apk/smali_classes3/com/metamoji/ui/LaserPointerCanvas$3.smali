.class Lcom/metamoji/ui/LaserPointerCanvas$3;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/LaserPointerCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/LaserPointerCanvas;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1200
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1205
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v2, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$mmoveByTime(Lcom/metamoji/ui/LaserPointerCanvas;J)V

    .line 1208
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_pointers(Lcom/metamoji/ui/LaserPointerCanvas;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 1209
    invoke-static {v5, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->-$$Nest$mcheckTimeout(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;J)V

    .line 1210
    invoke-virtual {v5}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->isFading()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    .line 1213
    :cond_0
    invoke-virtual {v5, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->tick(J)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return-void

    .line 1220
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_pointers(Lcom/metamoji/ui/LaserPointerCanvas;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 1222
    invoke-virtual {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1223
    invoke-virtual {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-virtual {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->dispose()V

    goto :goto_1

    .line 1227
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1228
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_pointers(Lcom/metamoji/ui/LaserPointerCanvas;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1232
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 1234
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_sprite(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 1237
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_pointers(Lcom/metamoji/ui/LaserPointerCanvas;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 1238
    invoke-virtual {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->draw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1241
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$3;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 1242
    throw v0
.end method
