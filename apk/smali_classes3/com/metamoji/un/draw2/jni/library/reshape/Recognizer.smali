.class public Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static recognize([FLcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;
    .locals 9

    .line 22
    iget v0, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->absoluteScale:F

    iget v1, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->closingThreshold:F

    iget v2, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->horizontalAndVerticalThreshold:F

    iget v3, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->lineThreshold:F

    iget v4, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->rightAngleThreshold:F

    iget v5, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->zeroAngleThreshold:F

    iget v6, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->regularCircleThreshold:F

    iget p1, p1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->ellipseMaxRadius:F

    const/16 v7, 0x8

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v0, 0x1

    aput v1, v7, v0

    const/4 v0, 0x2

    aput v2, v7, v0

    const/4 v0, 0x3

    aput v3, v7, v0

    const/4 v0, 0x4

    aput v4, v7, v0

    const/4 v0, 0x5

    aput v5, v7, v0

    const/4 v0, 0x6

    aput v6, v7, v0

    const/4 v0, 0x7

    aput p1, v7, v0

    .line 33
    invoke-static {p0, v7}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->native_recognize([F[F)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;

    move-result-object p0

    return-object p0
.end method
