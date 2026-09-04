.class Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;
.super Ljava/util/ArrayList;
.source "StrokeGradationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->linearGradation(Landroid/graphics/PointF;Landroid/graphics/PointF;II)Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$end:Landroid/graphics/PointF;

.field final synthetic val$start:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;->val$start:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;->val$end:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
