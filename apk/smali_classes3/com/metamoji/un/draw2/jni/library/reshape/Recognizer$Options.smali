.class public Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public absoluteScale:F

.field public closingThreshold:F

.field public ellipseMaxRadius:F

.field public horizontalAndVerticalThreshold:F

.field public lineThreshold:F

.field public regularCircleThreshold:F

.field public rightAngleThreshold:F

.field public zeroAngleThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
