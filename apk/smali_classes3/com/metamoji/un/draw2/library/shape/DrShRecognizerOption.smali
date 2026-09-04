.class public Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;
.super Ljava/lang/Object;
.source "DrShRecognizerOption.java"


# instance fields
.field public closingThreshold:F

.field public ellipseMaxRadius:F

.field public horizontalAndVerticalThreshold:F

.field public lineThreshold:F

.field public regularCircleThreshold:F

.field public rightAngleThreshold:F

.field public zeroAngleThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 11
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->closingThreshold:F

    const/high16 v0, 0x40f00000    # 7.5f

    .line 12
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->horizontalAndVerticalThreshold:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 13
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->lineThreshold:F

    const v0, 0x3e32b8c2

    .line 14
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->rightAngleThreshold:F

    .line 15
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->zeroAngleThreshold:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 16
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->regularCircleThreshold:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 17
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->ellipseMaxRadius:F

    return-void
.end method
