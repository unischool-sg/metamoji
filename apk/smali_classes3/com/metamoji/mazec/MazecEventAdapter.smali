.class public Lcom/metamoji/mazec/MazecEventAdapter;
.super Ljava/lang/Object;
.source "MazecEventAdapter.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    return-void
.end method

.method public onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0

    return-void
.end method

.method public onConvertResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 0

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFilterChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    return-void
.end method

.method public onInputLineColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    return-void
.end method

.method public onInputLineWidthTypeChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    return-void
.end method

.method public onLanguageChanged(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onRecognitionResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
    .locals 0

    return-void
.end method

.method public onStrokeUpdated(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/MazecIms;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
