.class Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;
.super Ljava/lang/Object;
.source "DrEraseInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrEraseTarget"
.end annotation


# instance fields
.field angleInDegrees:F

.field baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field contentScale:F

.field elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field endIndex:D

.field penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

.field startIndex:D

.field transform:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;-><init>()V

    return-void
.end method
