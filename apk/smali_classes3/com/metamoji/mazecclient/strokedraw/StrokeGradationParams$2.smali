.class Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$endColor:I

.field final synthetic val$startColor:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;->val$startColor:I

    iput p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;->val$endColor:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
