.class final Lcom/metamoji/rb/_HandleTemplateRec;
.super Ljava/lang/Object;
.source "RbRubberBand.java"


# instance fields
.field public offset:Landroid/graphics/PointF;

.field public relativePosition:Landroid/graphics/PointF;

.field public type:Lcom/metamoji/rb/RbConstants$Activity;


# direct methods
.method public constructor <init>(Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/rb/_HandleTemplateRec;->type:Lcom/metamoji/rb/RbConstants$Activity;

    .line 28
    iput-object p2, p0, Lcom/metamoji/rb/_HandleTemplateRec;->relativePosition:Landroid/graphics/PointF;

    .line 29
    iput-object p3, p0, Lcom/metamoji/rb/_HandleTemplateRec;->offset:Landroid/graphics/PointF;

    return-void
.end method
