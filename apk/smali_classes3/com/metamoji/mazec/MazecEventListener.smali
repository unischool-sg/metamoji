.class public interface abstract Lcom/metamoji/mazec/MazecEventListener;
.super Ljava/lang/Object;
.source "MazecEventListener.java"


# static fields
.field public static final EVT_GUIDELINE_UPDATED:I = 0x1a

.field public static final EVT_REF_STROKES_UPDATED:I = 0x18


# virtual methods
.method public abstract onBackgroundColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
.end method

.method public abstract onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
.end method

.method public abstract onConvertResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/converter/ConvertResult;)V
.end method

.method public abstract onEvent(ILjava/lang/Object;)V
.end method

.method public abstract onFilterChanged(Lcom/metamoji/mazec/MazecIms;I)V
.end method

.method public abstract onInputLineColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
.end method

.method public abstract onInputLineWidthTypeChanged(Lcom/metamoji/mazec/MazecIms;I)V
.end method

.method public abstract onLanguageChanged(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Z)V
.end method

.method public abstract onRecognitionResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
.end method

.method public abstract onStrokeUpdated(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V
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
.end method
