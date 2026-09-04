.class Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;
.super Lcom/metamoji/mazec/ui/HwStrokeAdapter;
.source "MazecIms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/MazecIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwStrokeListenerImpl"
.end annotation


# static fields
.field private static final DELAY_REQUEST_HWR:I = 0xc8

.field private static final DELAY_REQUEST_HWR2:I = 0x190


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method private constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4210
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/MazecIms-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method


# virtual methods
.method public notifyGuidelineUpdated()V
    .locals 4

    .line 4289
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuidelines()[F

    move-result-object v0

    .line 4290
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/metamoji/mazec/MazecIms;->fireMazecEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyStrokeShifted(FFLcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_4

    .line 4257
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4260
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 4263
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    .line 4264
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v2

    sub-float/2addr v3, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v2

    float-to-double v2, v3

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double v4, v2, v4

    .line 4266
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_3

    if-ltz v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    add-float/2addr v2, p1

    goto :goto_0

    :cond_1
    add-float v2, p1, p2

    .line 4273
    :goto_0
    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v3, v2, v0, p3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$msetRecognitionSegmentationPosition(Lcom/metamoji/mazec/MazecIms;FILcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 4274
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4277
    :cond_3
    :goto_2
    iget-object p3, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {p3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 4279
    iget-object p3, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {p3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object p3

    invoke-virtual {p3, p2, p1, v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->shift(FFLjava/util/List;)V

    :cond_4
    return-void
.end method

.method public notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 4218
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4221
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    .line 4224
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    if-nez v0, :cond_1

    .line 4222
    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mclear(Lcom/metamoji/mazec/MazecIms;)V

    goto :goto_1

    .line 4224
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mfireStrokeUpdateEvent(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V

    .line 4225
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_2

    .line 4226
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4228
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    const/16 v1, 0x190

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    :goto_0
    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mrecognize(Lcom/metamoji/mazec/MazecIms;I)V

    goto :goto_1

    .line 4231
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mrerecognize(Lcom/metamoji/mazec/MazecIms;I)V

    .line 4236
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4237
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    .line 4248
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    if-eqz v0, :cond_9

    .line 4238
    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 4239
    new-instance v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 4240
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v2

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 4241
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/HwStroke;

    if-eqz p1, :cond_7

    .line 4242
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_6

    .line 4243
    :cond_7
    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_2

    .line 4246
    :cond_8
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->ClearWithStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    return-void

    .line 4248
    :cond_9
    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->Clear()V

    :cond_a
    :goto_3
    return-void
.end method
