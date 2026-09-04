.class Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElementInfo"
.end annotation


# instance fields
.field public frameRect:Landroid/graphics/RectF;

.field public pointArray:Lcom/metamoji/cm/PointArray;

.field public pointsStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;


# direct methods
.method private constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;)V

    return-void
.end method
