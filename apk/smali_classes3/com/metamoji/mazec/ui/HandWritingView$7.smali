.class Lcom/metamoji/mazec/ui/HandWritingView$7;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 327
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmIsLatinLang(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecPreferences;->getWordSpacingCoefficient()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToWordStrokes(F)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToCharStrokes()Ljava/util/List;

    move-result-object v0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget-object v1, v1, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-nez v0, :cond_2

    return-void

    .line 339
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 340
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    .line 342
    iget-object v1, v1, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-wide v5, v1, v4

    .line 343
    iget-object v7, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v7}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 345
    invoke-virtual {v2, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget-object v1, v1, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$7;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$minvalidateGradationRect(Lcom/metamoji/mazec/ui/HandWritingView;)V

    return-void
.end method
