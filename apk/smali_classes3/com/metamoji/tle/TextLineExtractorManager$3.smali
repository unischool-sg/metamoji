.class Lcom/metamoji/tle/TextLineExtractorManager$3;
.super Landroid/graphics/PointF;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager;->getLineResultOfNoTextNoClassify(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;

.field final synthetic val$xy:[F


# direct methods
.method constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1396
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$3;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    iput-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager$3;->val$xy:[F

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    const/4 p1, 0x0

    aget p1, p2, p1

    iput p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$3;->x:F

    const/4 p1, 0x1

    aget p1, p2, p1

    iput p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$3;->y:F

    return-void
.end method
